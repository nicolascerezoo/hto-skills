# Test sintético + panel adversarial (predecir la curva antes de grabar)

El paso más caro y lento del proceso es grabar. Este modo **simula la VSL antes
de gastar un euro en ads o un minuto de grabación**: avatares sintéticos
calibrados al ICP "ven" el guion y reportan dónde se irían, qué no se creen y qué
objeción no les resolviste. Es el espejo proactivo del diagnóstico por métricas
(`metricas-diagnostico.md`): aquel lee la curva real; este la **predice**.

Regla de oro del test: los avatares son **adversariales por defecto**. En la
duda, se van, no se creen, no aplican. Un test blando no sirve de nada. Mejor que
te maten el guion aquí que el mercado después.

---

## Cómo se ejecuta (dos modos)

- **Inline (por defecto, funciona en plugin/Claude chat):** interpretas cada
  avatar por turnos, en personaje, y emites su veredicto estructurado. Mantén la
  disciplina adversarial: no defiendas el guion, atácalo desde la piel del avatar.
- **Multi-agente (Claude Code, requiere que el usuario lo pida):** un agente por
  avatar en paralelo, cada uno aislado en su personaje, más un agente de
  síntesis. Más fiable porque ningún avatar "ve" lo que dijeron los otros. No lo
  lances sin que el usuario opte explícitamente.

---

## El panel de avatares

Base de 4. **Calíbralos al caso**: ajusta cada uno con el ICP real, la afluencia
y las objeciones reales del briefing (2.1-2.3). Pondera según la afluencia
objetivo del VSL.

1. **El Lógico (afluente, opportunity state).** BS detector alto, valora su
   tiempo, escéptico ante claims grandes y dramatismo. Se va si huele venta o
   relleno. Pondera alto en VSL afluente/B2B.
2. **El Asustado (no afluente, pain state).** Compra desde el miedo, necesita
   creer, el precio le pesa, se enreda en detalles. Necesita que el VSL sea su
   fuente de creencia. Pondera alto en VSL no afluente/B2C.
3. **El Quemado.** Ya probó ads / otros programas y le fue mal. Escéptico por
   experiencia, no por carácter. Mata cualquier promesa que suene a lo que ya
   oyó. Test de credibilidad y de mecanismo.
4. **El Tibio (casi convencido).** Le interesa pero duda en el último paso.
   Testea SOLO el cierre: ¿el CTA es claro?, ¿el flujo se entiende?, ¿le falta un
   empujón concreto para aplicar? Si este no aplica, el CTA falla.

Ponderación rápida:
- VSL afluente/B2B → peso en Lógico + Quemado.
- VSL no afluente/B2C → peso en Asustado + Quemado.
- Tibio siempre entra (audita el cierre en todos los casos).

---

## Qué reporta cada avatar (formato fijo)

1. **Punto de fuga:** ¿dónde dejaría de ver? (función + cita aproximada) y por qué.
2. **No me lo creo:** claims/casos que no se traga + por qué.
3. **Objeción sin resolver:** qué duda mía sigue viva al final.
4. **"Esto es para mí" (0-10)** en tres momentos: hook / mitad / CTA.
5. **¿Aplicaría?** sí / no + qué me faltó para el sí.

---

## Predicción de la curva de retención

Agrega los puntos de fuga de todos los avatares y traza la curva por zonas. Habla
el mismo idioma que `metricas-diagnostico.md` para que el predictivo y el
forense encajen.

| Zona | Retención prevista | Riesgo principal |
|---|---|---|
| Hook (0-15s) | alta / media / cae | [por qué] |
| Problema + Mecanismo | alta / media / cae | [por qué] |
| Credibilidad + Cómo funciona | alta / media / cae | [por qué] |
| Objeciones + CTA | alta / media / cae | [por qué] |

- **Conversión simulada:** % de avatares que "aplicarían" (proxy del conversion
  rate). Si la mayoría no aplica, el problema es CTA/credibilidad/oferta — no lo
  tapes con más prosa.
- Cruza la zona de caída prevista con los umbrales del modo C: caída en hook →
  problema de hook/congruencia; caída a mitad → pregunta abierta o mecanismo
  flojo; caída antes del CTA → cierre débil.

---

## Panel adversarial / torneo de variantes (opcional, refuerza CREAR)

Cuando merezca la pena invertir en encontrar el mejor ángulo, no testees una
versión: compite varias.

1. Escribe **3 variantes** desde ángulos distintos: liderada por **dolor**,
   liderada por **mecanismo**, liderada por **prueba/casos**.
2. Pasa las 3 por el panel de avatares.
3. Puntúa cada variante: retención prevista + conversión simulada + checklist de
   `framework-7-bloques.md`.
4. **Sintetiza la ganadora** injertándole los mejores elementos de las otras dos
   (el mejor hook de una, la mejor resolución de objeción de otra).

En multi-agente: una rama por variante en paralelo, jueces que puntúan, síntesis
final. Requiere opt-in del usuario.

---

## Entrega

Usa `plantillas/informe-test-sintetico.md`. Cierra siempre con los **3 arreglos
prioritarios** ordenados por impacto en la curva, no con un resumen blando. El
test existe para cambiar el guion, no para aprobarlo.
