---
name: setter-scripts
description: >-
  Genera el SOP y los scripts de setting que el cliente entrega a su setter para
  trabajar leads, sobre todo el sistema de REACTIVACIÓN de leads dormidos (30+
  días sin contacto: aplicaron, agendaron, tuvieron llamada o escribieron y no
  compraron). Incluye filtros de lista, mensajes, secuencia de 3 toques, las 4
  fases de setting, el árbol de 8 situaciones y las métricas/EOD. Úsala cuando
  alguien quiera un script o SOP de setter por nicho, reactivar leads dormidos de
  su CRM, trabajar a quien aplicó pero no agendó, o montar el proceso de setting.
  Triggers: "script de setter", "SOP de setter", "reactivar leads", "leads
  dormidos", "leads que aplicaron y no agendaron", "seguimiento de leads",
  "proceso de setting", "activar mi base de datos / CRM". Personaliza por nicho y
  en la voz del cliente.
---

# Setter Scripts

Generas el **SOP y los scripts de setting** que el cliente entrega a su setter y
que el setter sigue al pie de la letra. El foco es el **sistema de reactivación**:
convertir la base dormida del CRM (leads que mostraron interés y no compraron) en
llamadas de venta, sin ads ni tráfico nuevo. El coste de adquisición ya se pagó;
esto solo los activa.

Español de España, tuteando. Parte de la suite: comparte `ofertas/<cliente>/`, la
oferta, el `voice-profile.md` y el mapa de objeciones.

> **Alcance (honesto):** esta skill cubre **reactivación de leads dormidos** y el
> mecanismo de setting (mensaje → setting → árbol → métricas), que es doctrina
> real de HTO. El **inbound setting script** (leads que llegan calientes por VSL)
> y el **proceso pre-llamada manual** son módulos aparte cuya transcripción no
> está disponible todavía; cuando se escriban en estos huecos, márcalos
> `[FALTA: módulo de inbound/pre-call]` en vez de inventarlos.

## Reactivación vs follow-up (no confundir)

- **Follow-up** = justo después de una llamada que no cerró. El lead sigue
  caliente. Días, no semanas. (Eso es otra pieza.)
- **Reactivación** = leads dormidos 30+ días, fríos, no se acuerdan de ti.
  Necesitan una conversación NUEVA, no un recordatorio. **Esto es lo que hace
  esta skill.**

## Reglas innegociables

1. **El setter no vende: cualifica.** Su único trabajo es decidir si el lead
   merece la agenda del closer. El precio lo habla el closer, nunca el setter.
2. **3 mensajes por lead, no más.** La insistencia quema la base y genera
   opt-outs que eliminan leads para siempre.
3. **El primer mensaje no propone llamada** ni menciona precio/oferta/nombre del
   programa. Solo pide permiso para enviar algo de valor.
4. **Voz del cliente**, personalizado por nicho. No inventes resultados → `[FALTA: x]`.

## Modo CREAR

Carga `referencia/sistema-reactivacion.md` y `referencia/setting-y-arbol.md`.
Genera el SOP completo para el setter:

1. **La lista** — 3 filtros obligatorios (sin contacto 30+ días · no descartados ·
   no clientes activos) + segmentación. **Segmento B (con llamada previa) SIEMPRE
   primero**; Segmento A (sin llamada — aplicó/webinar/DM) después.
2. **Los mensajes** — anatomía de 4 partes (identificación → conexión → gancho →
   CTA mínimo), en minúsculas, sin precio/oferta. Adaptados al nicho y a los 2
   segmentos.
3. **La secuencia** — Día 1 (apertura) → Día 2-3 (seguimiento con elemento nuevo)
   → Día 5 (cierre elegante con aversión a la pérdida). Después: pausa 60-90 días.
4. **Las 4 fases de setting** cuando responde (situación → problema → transformación
   → propuesta; el enlace de agenda SOLO en la fase 4).
5. **El árbol de 8 situaciones** (interés, sin respuesta, timing, precio,
   indecisión, opt-out, ambigua…) con el protocolo exacto de cada una.
6. **EOD + métricas** — 6 métricas diarias + benchmarks + diagnóstico por métrica.

## Modo REVISAR

Audita un script/SOP de setter existente contra: ¿el setter vende o cualifica?
¿3 mensajes máx? ¿primer mensaje sin llamada/precio? ¿completa las 4 fases antes
de proponer? ¿segmenta B antes que A? Informe priorizado.

## Convenciones de salida

- Carpeta por cliente: `ofertas/<cliente>/`.
- Archivo: `setter-sop.md` (`plantillas/setter-sop.md`) — el documento que el
  cliente da a su setter.
- Tras escribir, confirma la ruta y resume.
