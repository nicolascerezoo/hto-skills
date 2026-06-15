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

## Antes de escribir: reúne el contexto

De la carpeta del cliente o preguntando:
- **La oferta** (`oferta-interna.md` / `carta-presentacion.md`): promesa,
  mecanismo, prueba, garantía. Los emails venden ESA oferta.
- **El mapa de objeciones** (`objeciones-llamadas.md` si existe): los emails de
  objeción se construyen sobre objeciones reales, no inventadas.
- **La voz** (`voice-profile.md`).
- **Para hammer them**, además: tipo de llamada (estrategia/demo/diagnóstico),
  ventana booking→call (¿24h? ¿7 días? cambia todo), precio de la oferta, y
  show rate actual si ya corre.

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
