#!/usr/bin/env python3
"""Motor económico de la oferta — valida margen, garantía y techo de CAC.

Calculador opcional (sin dependencias, sin claves). Claude también puede hacer
estas cuentas en conversación; este script da los números exactos y un informe
listo para pegar en oferta-interna.md.

Uso:
  python3 motor_economico.py --precio 8000 --coste-directo 500 --horas 40 \
      --coste-hora 50 --capacidad 4 --garantia-horas-extra 15 \
      --tasa-reclamacion 0.15 --close-rate 0.12

Garantía de reembolso: usa --garantia-reembolso (Cg = precio) en vez de
--garantia-horas-extra.
"""
import argparse


def compute(P, Cd, H, Ch, Cap, r, Cg, cr, M=3.0):
    CE = Cd + H * Ch
    MB = P - CE
    MBpct = (MB / P) if P else 0.0
    CGe = r * Cg
    MA = MB - CGe
    MBpeor = P - CE - Cg
    Imax = Cap * P
    CACbe = MA
    CACsano_lo, CACsano_hi = 0.20 * P, 0.30 * P
    CACobj = (MA / M) if M else MA
    coste_max_aplicacion = CACobj * cr
    return {
        "CE": CE, "MB": MB, "MBpct": MBpct, "CGe": CGe, "MA": MA,
        "MBpeor": MBpeor, "Imax": Imax, "CACbe": CACbe,
        "CACsano_lo": CACsano_lo, "CACsano_hi": CACsano_hi,
        "CACobj": CACobj, "coste_max_aplicacion": coste_max_aplicacion, "M": M,
    }


def flags(res, objetivo_ingresos=None, coste_aplicacion_nicho=None):
    out = []
    if res["MBpct"] < 0.60:
        out.append(f"⚠️ Margen fino ({res['MBpct']:.0%} < 60%): sube precio o productiza la entrega.")
    else:
        out.append(f"✅ Margen sano ({res['MBpct']:.0%}).")
    if res["MBpeor"] < 0:
        out.append("🔴 Garantía INSOSTENIBLE: pierdes dinero si reclaman. Cambia el tipo o endurece condiciones.")
    else:
        out.append(f"✅ Garantía sostenible (peor caso: {res['MBpeor']:.0f} €).")
    if coste_aplicacion_nicho is not None and res["coste_max_aplicacion"] < coste_aplicacion_nicho:
        out.append(f"🔴 No puede permitirse paid hoy: coste máx/aplicación {res['coste_max_aplicacion']:.0f} € < {coste_aplicacion_nicho:.0f} € del nicho. Sube AOV o vende backend.")
    if objetivo_ingresos is not None and res["Imax"] < objetivo_ingresos:
        out.append(f"⚠️ El cuello es la ENTREGA, no el marketing: techo {res['Imax']:.0f} €/mes < objetivo {objetivo_ingresos:.0f} €.")
    return out


def report(P, res, flag_lines):
    L = []
    L.append("## Validación económica")
    L.append("")
    L.append(f"- Coste de entrega total: **{res['CE']:.0f} €**")
    L.append(f"- Margen bruto por venta: **{res['MB']:.0f} €** ({res['MBpct']:.0%})")
    L.append(f"- Coste esperado de garantía: {res['CGe']:.0f} € · Margen ajustado: **{res['MA']:.0f} €**")
    L.append(f"- Peor caso (todos reclaman): {res['MBpeor']:.0f} €")
    L.append(f"- Techo de ingresos/mes con capacidad actual: **{res['Imax']:.0f} €**")
    L.append("")
    L.append("### Techo de CAC (para el media buyer)")
    L.append(f"- CAC de breakeven (1ª venta): **{res['CACbe']:.0f} €** (gastar más = perder en la 1ª venta salvo LTV)")
    L.append(f"- CAC sano (20-30% de P): {res['CACsano_lo']:.0f}–{res['CACsano_hi']:.0f} €")
    L.append(f"- CAC objetivo (múltiplo {res['M']:.0f}): **{res['CACobj']:.0f} €**")
    L.append(f"- **Coste máximo por aplicación: {res['coste_max_aplicacion']:.0f} €**")
    L.append("")
    L.append("### Diagnóstico")
    for f in flag_lines:
        L.append(f"- {f}")
    return "\n".join(L)


def main():
    p = argparse.ArgumentParser(description="Motor económico de la oferta")
    p.add_argument("--precio", type=float, required=True)
    p.add_argument("--coste-directo", type=float, default=0.0)
    p.add_argument("--horas", type=float, required=True)
    p.add_argument("--coste-hora", type=float, required=True)
    p.add_argument("--capacidad", type=float, required=True)
    p.add_argument("--tasa-reclamacion", type=float, default=0.15)
    p.add_argument("--garantia-horas-extra", type=float, default=0.0)
    p.add_argument("--garantia-reembolso", action="store_true",
                   help="La garantía es reembolso total (Cg = precio)")
    p.add_argument("--close-rate", type=float, required=True,
                   help="ventas ÷ aplicaciones (ej 0.12)")
    p.add_argument("--multiplo", type=float, default=3.0)
    p.add_argument("--objetivo-ingresos", type=float, default=None)
    p.add_argument("--coste-aplicacion-nicho", type=float, default=None)
    a = p.parse_args()

    Cg = a.precio if a.garantia_reembolso else a.garantia_horas_extra * a.coste_hora
    res = compute(a.precio, a.coste_directo, a.horas, a.coste_hora, a.capacidad,
                  a.tasa_reclamacion, Cg, a.close_rate, a.multiplo)
    flag_lines = flags(res, a.objetivo_ingresos, a.coste_aplicacion_nicho)
    print(report(a.precio, res, flag_lines))


if __name__ == "__main__":
    main()
