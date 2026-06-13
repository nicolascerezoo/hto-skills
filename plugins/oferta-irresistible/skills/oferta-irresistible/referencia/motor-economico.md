# Motor económico — ¿la oferta aguanta y cuánto puedes gastar en captar?

Una oferta puede sonar irresistible y aun así quebrar el negocio: margen
demasiado fino, una garantía que no se sostiene, o un precio que no deja pagar
publicidad. Este motor valida los números **antes** de lanzar, y traduce la
oferta a un **techo de CAC** concreto para el media buyer.

Vive dentro del Bloque 7 (Pricing) y su salida va a la sección "Validación
económica" de `oferta-interna.md`. **Usa solo los números reales del cliente.**
Si falta alguno, pregúntalo — no estimes margen sobre datos inventados.

## Inputs (casi todos ya salen del Bloque 0 y 7)

| Símbolo | Qué es | De dónde |
|---|---|---|
| `P` | Precio de venta (usa el precio que **se cobra de verdad**: contado o medio) | Bloque 7 |
| `Cd` | Coste de entrega **directo** en € (herramientas, subcontratas, materiales) | Bloque 0 |
| `H` | Horas de entrega por cliente (fundador + equipo) | Bloque 0 |
| `Ch` | Coste por hora cargado del equipo (o coste de oportunidad del fundador) | preguntar |
| `Cap` | Capacidad: clientes nuevos entregables al mes | Bloque 0 |
| `r` | Tasa estimada de invocación de la garantía (%) | escenario (usa 10-20%) |
| `Cg` | Coste del remedio si se invoca la garantía | derivado del tipo (abajo) |
| `cr` | Close rate = ventas ÷ aplicaciones (o ÷ llamadas; define cuál) | preguntar / benchmark |

**Coste del remedio de garantía `Cg` según tipo:**
- **Condicional** ("seguimos trabajando"): `Cg = horas_extra × Ch`.
- **Reembolso total**: `Cg = P` (pérdida del ingreso completo — la más cara).
- **Performance** ("no cobras hasta X"): el coste es el de entregar sin haber
  cobrado todavía; modélalo como retraso de caja, no como pérdida.

## Cálculos

```
Coste de entrega total      CE  = Cd + (H × Ch)
Margen bruto por venta      MB  = P − CE
Margen %                    MB% = MB ÷ P
Coste esperado de garantía  CGe = r × Cg
Margen ajustado por garantía MA = MB − CGe
Peor caso (todos reclaman)  MBpeor = P − CE − Cg
Techo de ingresos/mes       Imax = Cap × P
```

### Techo de CAC (lo que le importa al media buyer)

```
CAC de breakeven (1ª venta)   CACbe   = MA
   → gastar MÁS que esto = pierdes dinero en la primera venta.
     Solo se justifica si hay recurrencia/renovación/backend (LTV).

CAC sano (high-ticket)        CACsano ≈ 20-30% de P   (y siempre < MA)
   → margen muy holgado; punto de partida razonable para escalar.

CAC objetivo por múltiplo     CACobj  = MA ÷ M
   → si quieres recuperar M veces lo invertido en ads en la primera venta.
     M=3 es un objetivo sano para empezar.
```

### Allowables del funnel (traducción para Adrián / el media buyer)

Encadenando el close rate, el techo de CAC se convierte en límites concretos por
etapa:

```
Coste máx por aplicación = CAC × cr      (cr = ventas ÷ aplicaciones)
```

Ejemplo: si `CAC = 2.000 €` y de cada 10 aplicaciones cierras 1 (`cr = 0,10`),
el coste máximo por aplicación cualificada es **200 €**. Ese es el número que le
das al media buyer. Si hay más etapas (lead → llamada → venta), encadena las
tasas igual.

## Reglas de decisión (qué dispara cada resultado)

- **`MB%` < 60%** en un servicio → margen fino. Sube precio o **productiza la
  entrega** para bajar `H`. Conecta con [[feedback_pricing_upfront_con_flexibilidad]].
- **`MBpeor` < 0** → la garantía te hace perder dinero si la gente reclama:
  **insostenible**. Cambia el tipo (de reembolso a condicional) o endurece las
  condiciones. Es el checkpoint "¿aguantas si reclama el 10%?" cuantificado.
- **`CACsano` < coste realista por aplicación en su nicho** → no puede permitirse
  paid hoy. Opciones: subir precio/AOV, bajar coste de entrega, o vender backend
  (LTV) para subir el techo. Avísale antes de que queme presupuesto en ads.
- **`Imax` < objetivo de ingresos** → el cuello es la **entrega, no el
  marketing**. Más ads no arregla nada hasta escalar capacidad o subir precio.
- **Cash-first:** recuerda que el techo de CAC real depende de cuánto cobras por
  adelantado. Cobrar al contado (vs a plazos) mejora la caja para reinvertir en
  ads. Ver [[reference]] pricing-cash-first.md.

## Ejemplo trabajado (genérico)

Oferta a `P = 8.000 €` contado · `Cd = 500 €` · `H = 40 h` · `Ch = 50 €/h` ·
`Cap = 4/mes` · garantía condicional con `horas_extra = 15 h` · `r = 15%` ·
`cr = 0,12`.

```
CE  = 500 + 40×50 = 2.500 €
MB  = 8.000 − 2.500 = 5.500 €      → MB% = 69% ✅ (margen sano)
Cg  = 15 × 50 = 750 €
CGe = 0,15 × 750 = 112,50 €
MA  = 5.500 − 112,50 = 5.387,50 €
MBpeor = 8.000 − 2.500 − 750 = 4.750 € ✅ (aguanta aunque todos reclamen)
Imax = 4 × 8.000 = 32.000 €/mes (techo con capacidad actual)
CACbe   = 5.387 €
CACsano ≈ 1.600-2.400 € (20-30% de P)
CACobj (M=3) = 1.796 €
Coste máx por aplicación = 1.796 × 0,12 ≈ 215 €
```

Lectura: oferta sólida, garantía sostenible, y el media buyer tiene barra clara
(≈215 €/aplicación a un múltiplo de 3). El cuello a vigilar es la capacidad
(32K/mes) — antes de escalar ads agresivo, ¿puede entregar más de 4/mes?
