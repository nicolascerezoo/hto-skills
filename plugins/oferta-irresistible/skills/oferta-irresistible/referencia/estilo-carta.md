# Estilo visual por defecto de la carta de presentación

**Por defecto, la carta no se entrega solo en markdown: se genera como documento
estético.** Tras escribir `carta-presentacion.md`, genera también
`carta-presentacion.html` con este estándar y, si hay acceso a Google Docs,
crea el Doc a partir del HTML y compártelo (cualquiera con el enlace).

## Estándar por defecto

- **Tipografía:** Inter (vía Google Fonts en el HTML). Fallback: Arial.
- **Títulos en verde** `#15803d`. Cuerpo en gris oscuro `#1a1a1a`.
- **Cabecera de tablas** con fondo verde `#15803d` y texto blanco.
- Frases cortas, secciones separadas con `<hr>`, bullets donde aportan claridad.
- Líneas de cierre de cada componente en cursiva y gris medio `#555`.

> **Color configurable:** el verde es el default. Si el cliente tiene un color
> de marca propio y lo pide, sustitúyelo en todos los `#15803d`.

## Caveat honesto (Inter en Google Docs)

El HTML (y un PDF exportado de él) renderiza Inter perfecto. Al **convertir a
Google Doc**, si Inter no está en la lista de fuentes del documento, Google lo
sustituye por Arial. Para fidelidad máxima de marca, el entregable "bonito" es
el HTML/PDF; el Google Doc es para editar y comentar. Dilo si la fidelidad
tipográfica importa.

## Esqueleto HTML (rellena el contenido, mantén los estilos)

```html
<html><head><meta charset="utf-8">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
</head>
<body style="font-family:'Inter',Arial,sans-serif;color:#1a1a1a;line-height:1.6;max-width:760px;margin:0 auto;padding:24px;">

<h1 style="font-family:'Inter',Arial,sans-serif;font-size:30px;color:#15803d;margin-bottom:2px;">[Nombre de la oferta]</h1>
<p style="font-size:17px;color:#444;margin-top:0;"><b>[Subtítulo / encuadre]</b></p>
<p style="font-size:16px;">[Promesa: situación → resultado, con mecanismo, en tiempo, sin sacrificio]</p>
<hr style="border:none;border-top:1px solid #e5e5e5;margin:28px 0;">

<h2 style="font-family:'Inter',Arial,sans-serif;color:#15803d;">Esto es perfecto para ti si...</h2>
<ul><li>[bullet de cualificación]</li></ul>
<hr style="border:none;border-top:1px solid #e5e5e5;margin:28px 0;">

<h2 style="font-family:'Inter',Arial,sans-serif;color:#15803d;">Qué construimos [contigo / para ti]</h2>
<h3 style="font-family:'Inter',Arial,sans-serif;color:#15803d;">[Componente — título de resultado]</h3>
<ul><li><b>[Entregable]</b> [acción → beneficio]</li></ul>
<p style="color:#555;"><i>[Cierre: qué cambia para ti]</i></p>

<h2 style="font-family:'Inter',Arial,sans-serif;color:#15803d;">Bonuses exclusivos (solo al entrar)</h2>
<h3 style="font-family:'Inter',Arial,sans-serif;color:#15803d;">[Bonus]</h3>
<ul><li>[entregable del bonus]</li></ul>

<h2 style="font-family:'Inter',Arial,sans-serif;color:#15803d;">Inversión</h2>
<table border="1" cellspacing="0" cellpadding="8" style="border-collapse:collapse;font-size:15px;">
<tr style="background:#15803d;color:#ffffff;"><th>Modalidad</th><th>Inversión</th><th>Para quién</th></tr>
<tr><td><b>[Tier]</b></td><td>[precio]</td><td>[una línea]</td></tr>
</table>

<h2 style="font-family:'Inter',Arial,sans-serif;color:#15803d;">[Garantía]</h2>
<p>[texto de la garantía]</p>

</body></html>
```

> Para crear el Google Doc desde el HTML: subida con conversión a
> `application/vnd.google-apps.document` y permiso `anyone/reader`.
