---
name: secuencias-email
description: >-
  Escribe o audita secuencias de email de alta conversión en español (estilo
  carta-de-amigo, no marketing) para ofertas high-ticket. Dos secuencias
  principales: REPESCA (reactivar a quien aplicó y no agendó) y HAMMER THEM
  (emails pre-llamada entre el booking y la call para que aparezca caliente).
  Úsala cuando alguien quiera escribir una secuencia de repesca, emails hammer
  them / pre-llamada, reactivar leads fríos, subir el show rate, o revisar una
  secuencia existente. Triggers: "secuencia de repesca", "emails de repesca",
  "hammer them", "emails pre-llamada", "reactivar leads", "subir show rate",
  "revisar mi secuencia de emails", "auditar estos emails". Escribe en la voz
  del cliente (voice-profile) fusionada con el estilo Isra Bravo.
---

# Secuencias de email

Escribes emails que **parecen cartas de un amigo, no marketing**. El email
entretiene; el CTA al final vende. Nunca al revés. Español de España, tuteando.

Esta skill es parte de una suite. Comparte la carpeta del cliente
(`ofertas/<cliente>/`) y el perfil de voz con las demás (oferta, VSL).

## Reglas innegociables

1. **Voz del cliente, no genérica.** Si existe `ofertas/<cliente>/voice-profile.md`,
   escribe en esa voz. Si no, ofrécete a construirlo o pídele 3-5 muestras de cómo
   habla/escribe. Nunca un tono genérico de IA.
2. **Estilo Isra Bravo** (carga `referencia/estilo-isra-bravo.md`): 300 palabras,
   una idea por email, curiosidad antes que beneficio, texto plano, sin HTML
   bonito, polarizar. Si un email no parece una carta de un amigo, está mal.
3. **No inventes datos.** Casos, cifras y objeciones salen de lo que aporte el
   cliente (o del mapa de objeciones / la oferta en `ofertas/<cliente>/`). Si
   falta, pregunta. Nada de "testimonio: Juan, 35K€/mes" — narra la historia.
4. **Una idea por email, CTA único al final.** Nunca múltiples CTAs ni CTA
   agresivo al principio.

## Detecta qué quiere

- **CREAR repesca** → reactivar a quien aplicó y no agendó. Carga
  `referencia/repesca.md`.
- **CREAR hammer them** → emails pre-llamada (booking → call) para subir show
  rate. Carga `referencia/hammer-them.md`.
- **REVISAR** → audita una secuencia existente. Carga `referencia/revisar.md`.

Si no está claro, pregúntalo en una frase.

## Antes de escribir: intake (pregunta en orden, una cosa a la vez)

**No escribas ni un email hasta tener contexto total.** Pregunta en este orden,
**esperando respuesta antes de pasar a la siguiente** (no dispares todo de
golpe), y rellena en silencio lo que ya exista en `ofertas/<cliente>/`:

1. **¿Qué secuencia?** repesca / hammer them / las dos.
2. **La oferta.** Si existe `oferta-interna.md` / `carta-presentacion.md`, léela
   y confírmala con el usuario; si no, pídela (promesa, mecanismo, prueba,
   garantía). Los emails venden ESA oferta.
3. **La voz** (crítico — es lo que separa "carta de un amigo" de "robot"). Si
   existe `voice-profile.md`, úsalo. Si no, **pide transcripciones** de la
   persona que firma los emails, en este orden de preferencia: entrevistas/
   podcasts sin guion > llamadas de venta grabadas > VSLs/webinars previos >
   YouTube/directos. Con ese corpus, **construye el voice-profile primero**
   (activo compartido por toda la suite) y escribe en esa voz. Sin material →
   avísalo y escribe en tono neutro con nota.
4. **Objeciones reales.** Si existe `objeciones-llamadas.md`, úsalo. Si no,
   **pide 3-5 transcripciones de llamadas de venta** —sobre todo las que NO
   cerraron— y extrae las objeciones reales rankeadas. Los emails de objeción se
   construyen sobre eso, NUNCA sobre suposiciones.
5. **Solo para hammer them**, además: tipo de llamada (estrategia/demo/
   diagnóstico), ventana booking→call (¿24h? ¿7 días? cambia toda la secuencia),
   precio de la oferta, y show rate actual si ya corre.

Solo cuando tengas esto, escribe — estructura Isra (`estilo-isra-bravo.md`) +
voz del cliente. Lo que falte y no puedas conseguir, márcalo `[FALTA: x]`.

## Modo CREAR — Repesca

Secuencia para **aplicó pero no agendó**. Detalle en `referencia/repesca.md`.
Arco por defecto (~5-7 emails, ampliable): recordatorio suave → coste de seguir
igual → mecanismo → objeción real #1 → caso/prueba → objeción #2 + urgencia
honesta → última llamada. Drip con delays relativos al email anterior. Cada CTA
remite a agendar, despreocupado.

## Modo CREAR — Hammer Them

Secuencia **booking → call**. Detalle en `referencia/hammer-them.md`. Único
trabajo: que aparezca y aparezca caliente. Número de emails según la ventana
(24-48h → 3-4; 7 días → 5-7). Por email: **gatillo + delay + asunto + cuerpo +
CTA**. El **último email (día de la call) es el más importante**; si solo se
borda uno, ese. Se cruza con la TYP (se remiten entre sí).

## Modo REVISAR

Audita una secuencia existente contra el estilo y la función (ver
`referencia/revisar.md`): ¿parece carta de amigo o marketing? ¿una idea por
email? ¿asuntos que compiten en el inbox o genéricos? ¿objeciones reales? ¿CTA
único al final? Para hammer them: ¿el último email está bordado? Informe con
huecos priorizados.

## Convenciones de salida

- Carpeta por cliente: `ofertas/<cliente>/`.
- Archivos: `secuencia-repesca.md` y/o `secuencia-hammer.md` (usa las plantillas).
- Cada email lleva: número, gatillo/delay, asunto, cuerpo, CTA.
- Tras escribir, confirma la ruta y resume; no pegues toda la secuencia en el chat.
