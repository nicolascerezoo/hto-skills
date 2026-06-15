# Perfil de voz persistente (activo reutilizable cross-skill)

La absorción de voz "de cero en cada VSL" tira trabajo a la basura. Este es el
upgrade: se extrae la voz **una vez** desde el corpus de la persona que va a
grabar/firmar los activos, se guarda como artefacto scoreado, y lo reutilizan
TODAS las skills del paquete (oferta, VSL, emails, landing, thank-you page). Una
sola huella de voz → todos los activos en la voz real de quien los firma, no en
un tono genérico de IA. La congruencia de voz a lo largo del funnel es de lo que
más convierte.

> La voz es siempre la de **quien usa la skill o su cliente** — la persona que
> va a grabar el vídeo / firmar los emails. Nunca un perfil prefijado de otra
> persona. Si una agencia usa la skill con varios clientes, cada cliente tiene
> su propio perfil.

**Ubicación del artefacto:** `ofertas/<cliente>/voice-profile.md` — la misma
carpeta donde la familia de skills guarda el trabajo de ese cliente/negocio
(junto a `oferta-interna.md`, el guion del VSL, etc.). Si usas la skill para tu
propio negocio, `<cliente>` eres tú. Construido una vez, lo reutiliza todo el
paquete.

---

## Cuándo construirlo

- Al hacer el **primer VSL** de un cliente (o el primer activo de copy).
- Cuando el usuario lo pida explícitamente ("construye el perfil de voz de X").
- Refresco: cuando aparezca material nuevo relevante (rebranding, cambio de tono
  deliberado, mucho contenido nuevo). No hace falta reconstruirlo cada vez.

Si ya existe `voice-profile.md`, **úsalo, no lo reconstruyas**. Solo actualízalo
si el material nuevo cambia algo de fondo.

---

## Requisitos de corpus

Material grabado de **la persona que va a grabar ese activo** — nunca de un
tercero. Ordenado por utilidad:

1. Entrevistas / podcasts sin guion (lo más natural).
2. Llamadas de venta grabadas.
3. VSLs / webinars previos.
4. YouTube (tutoriales, Q&As).
5. Directos / contenido largo hablado.

Mínimo razonable: ~3-5 piezas o ~30 min de habla espontánea transcrita. Menos
que eso → perfil de baja fidelidad (decláralo en el score, no lo escondas).

Cómo conseguir transcripciones: YouTube → subtítulos → "abrir transcripción".
Audio o vídeo suelto → cualquier transcriptor (TurboScribe u otro). Si no hay
nada grabado, lo más rápido: grábate 10 min hablando de tu método y tu cliente
y transcríbelo.

---

## Proceso de extracción

Analiza el corpus aplicando las **10 dimensiones** del protocolo de absorción de
`referencia/voz-y-anti-ia.md` (longitud de frase, transiciones, muletillas,
energía, vocabulario, storytelling, humor, énfasis, referencias, expresiones
propias). No las repliques aquí: úsalas como rejilla de análisis.

La diferencia con la absorción inline: aquí el output es un **artefacto
persistente y scoreado**, con un **banco de frases firma verbatim** listo para
reinsertar, y una sección de **líneas rojas de voz** (lo que esta persona NUNCA
diría). Usa la plantilla `plantillas/voice-profile.md`.

Reglas:
- **Cita textual.** Cada patrón se respalda con ejemplos reales del corpus, no
  con descripciones genéricas. "Usa 'a ver, el tema es que…' para arrancar
  reflexiones" > "tiene transiciones naturales".
- **Frecuencia de muletillas.** Etiqueta cada una alta/media/baja para poder
  dosificarlas (natural, no parodia).
- **Lo que NO hace** es tan importante como lo que hace: registro que nunca usa,
  palabras que le sonarían falsas, tics que no son suyos.

---

## Score de fidelidad

Cierra el perfil con un score honesto de cuánto se puede clonar esta voz con el
corpus disponible:

- **Alto** — corpus amplio y espontáneo; el copy puede ser indistinguible.
- **Medio** — material suficiente pero limitado; voz reconocible, no perfecta.
- **Bajo** — poco material o demasiado guionizado; añade qué falta para subirlo
  (p. ej. "graba 20 min de Q&A sin guion").

El score viaja con el artefacto: cualquier skill que lo consuma sabe cuánto
fiarse y cuándo pedir más material.

---

## Consumo desde las otras skills del paquete

El paquete que el usuario se descarga del portal incluye varias skills de copy
(oferta, VSL, emails, landing, thank-you page). Antes de escribir, cada una busca
`ofertas/<cliente>/voice-profile.md`:
- **Existe** → lo carga y escribe en esa voz (banco de frases + líneas rojas +
  test "¿se reconocería quién habla?").
- **No existe** → ofrece construirlo (si hay corpus) o cae al tono neutro con
  nota.

La idea de producto: el usuario construye su perfil de voz UNA vez (modo VOZ) y
todas las skills que se ha descargado escriben en su voz. Es el hilo conductor
que mantiene coherente —y humano— todo el funnel.
