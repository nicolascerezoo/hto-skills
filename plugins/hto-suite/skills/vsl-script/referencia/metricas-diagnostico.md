# Diagnóstico por métricas (modo REVISAR-C)

Se pasan play rate, engagement (con punto de caída del retention si lo hay) y
conversion. Diagnostica con estos umbrales y arreglos.

---

## Antes de diagnosticar: dos guardarraíles

1. **Tamaño de muestra.** No diagnostiques con ruido. Si hay menos de ~200-300
   reproducciones (o menos de ~30-50 aplicaciones para la conversión), dilo: "no
   hay señal suficiente todavía, sigue acumulando datos". Un VSL no se juzga con
   30 vistas.
2. **Prioridad operativa: ads → headline/página → VSL.** Lo primero que se
   testea SIEMPRE son los ads. El VSL solo se itera cuando el cliente lleva
   tiempo y los ads ya están optimizados. Si el problema apunta arriba (al ad o
   a la página), **no recomiendes regrabar el VSL** — sería arreglar lo que no
   está roto.

---

## Umbrales y arreglos

### Play rate — % que le da al play
- **>50%** excelente · **30-50%** bien · **<30%** falla.
- Un play rate bajo casi nunca es problema del guion: es **headline, miniatura,
  página y congruencia con el ad**. Arreglo: toca el headline y la página ANTES
  de tocar el vídeo. Si el ad y la página no son congruentes con lo que promete
  el VSL, ningún guion lo salva.

### Engagement — % de retención / cuánto ven
- **>50%** funciona · **<50%** el copy no engancha.
- Mira **DÓNDE cae** el retention graph:
  - **Caída al principio (primeros segundos)** → el **hook** falla o es
    incongruente con lo que vieron antes. Reescribe hook.
  - **Caída a mitad** → hay una **pregunta abierta sin responder** o el
    mecanismo no convence / se hace largo. Revisa la transición y el Bloque 3-5.
  - **Caída antes del CTA** → el "cómo funciona" aburre o las objeciones no
    enganchan; el espectador no llega motivado al cierre.

### Conversion — % de viewers que aplican
- **>10%** bueno · **<10%** flojo.
- Arreglo: reforzar el **CTA** (claridad, repetición, flujo completo), añadir
  **credibilidad** (más prueba, casos variados), y **revisar la oferta** (si la
  promesa o el encaje fallan, el VSL no lo arregla — vuelve a la oferta).

---

## Cómo entregar el diagnóstico

1. Confirma tamaño de muestra; si es insuficiente, para aquí.
2. Localiza el cuello de botella en el orden play → engagement → conversion (no
   tiene sentido optimizar conversion si el play rate está roto).
3. Da el arreglo en el nivel correcto (ad/página/headline antes que VSL).
4. Si el problema es del guion, remite al checklist y al bloque concreto.
5. Recuerda: iterar el VSL es lo último, no lo primero.
