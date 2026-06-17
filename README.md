# HTO Skills

Suite de skills de **High Ticket Operator** para Claude. Sirven en **Claude Code**
(como plugin, vía este marketplace) y en **Claude.ai / Cowork** (subiendo cada
skill como ZIP).

Las skills comparten la carpeta de trabajo por cliente (`ofertas/<cliente>/`) y
un mismo perfil de voz, así que conviene usarlas juntas.

## Skills de la suite

> Orden del embudo: **estudio de mercado → oferta → VSL → landing → thank you page
> → emails → setter**, más **cash injection** (caja rápida sin ads) como arranque.

### `estudio-mercado-icp`
El punto de partida. Research de mercado + ingeniería inversa del ICP (10+1 fases)
→ documento de ICP + hipótesis de oferta. Alimenta a `oferta-irresistible`.

### `oferta-irresistible`
Construye o audita ofertas high-ticket. Modo **CREAR** (te guía bloque a bloque
y genera el documento interno + la carta de presentación estética) y modo
**REVISAR** (audita una oferta existente y da un informe priorizado).

### `vsl-script`
Construye o audita guiones de VSL. Crea el guion desde la oferta, revisa un
guion antes de grabar, audita una transcripción, o diagnostica un VSL por sus
métricas. Calibra tono y duración según el comprador.

### `secuencias-email`
Escribe o audita secuencias de email estilo carta-de-amigo (Isra Bravo) en la
voz del cliente: **repesca** (reactivar a quien no agendó) y **hammer them**
(emails pre-llamada para subir el show rate).

### `landing-copy`
Escribe o audita el copy de la landing del embudo, con foco en el **hero**
(eyebrow + headline + subheadline). Objetivo único: que pulsen play en el VSL.
Exige congruencia con el anuncio que trae el tráfico.

### `thank-you-page`
Scripts de la Thank You Page: vídeo principal + vídeos de objeción. Sube el show
rate (B2B) o la tasa de conexión (B2C). Hermana de Hammer Them.

### `setter-scripts`
SOP y scripts de setting para el setter: sistema de **reactivación de leads
dormidos** del CRM (lista, mensajes, 3 toques, 4 fases de setting, árbol de
respuestas, métricas).

### `cash-injection`
Campaña de 7 días para generar caja con la audiencia existente, sin ads. Plan día
a día + promoción pública y privada. El arranque antes de invertir en tráfico.

---

## Instalar en Claude Code (una instalación = ambas skills)

```
/plugin marketplace add nicolascerezoo/hto-skills
/plugin install hto-suite@hto-skills
```

Actualizar más adelante:

```
/plugin marketplace update hto-skills
```

---

## Usar en Claude.ai / Cowork

Sube cada skill por separado (la plataforma sube skills de una en una):

1. Descarga los ZIP de `dist/`: `oferta-irresistible.zip` y `vsl-script.zip`.
2. En Claude.ai ve a **Ajustes → Capabilities → Skills**.
3. Sube cada ZIP. Las skills quedan disponibles en tus chats.

> Los ZIP no se auto-actualizan. Cuando salga una versión nueva, vuelve a
> descargarlos y súbelos de nuevo.

---

© High Ticket Operator — highticketoperator.io
