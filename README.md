# HTO Skills

Suite de skills de **High Ticket Operator** para Claude. Sirven en **Claude Code**
(como plugin, vía este marketplace) y en **Claude.ai / Cowork** (subiendo cada
skill como ZIP).

Las skills comparten la carpeta de trabajo por cliente (`ofertas/<cliente>/`) y
un mismo perfil de voz, así que conviene usarlas juntas.

## Skills de la suite

### `oferta-irresistible`
Construye o audita ofertas high-ticket. Modo **CREAR** (te guía bloque a bloque
y genera el documento interno + la carta de presentación estética) y modo
**REVISAR** (audita una oferta existente y da un informe priorizado).

### `vsl-script`
Construye o audita guiones de VSL. Crea el guion desde la oferta, revisa un
guion antes de grabar, audita una transcripción, o diagnostica un VSL por sus
métricas. Calibra tono y duración según el comprador.

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
