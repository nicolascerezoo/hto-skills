#!/usr/bin/env bash
# Sincroniza la skill desde la copia de trabajo (mega-brain) al repo público,
# EXCLUYENDO la carta real de HTO, regenera el ZIP del cliente y hace push.
# Uso:  ./sync.sh "mensaje de commit"
set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
SRC="/Users/nicolascerezoo/mega-brain/.claude/skills/oferta-irresistible"
DST="$REPO_DIR/plugins/oferta-irresistible/skills/oferta-irresistible"
ENV_FILE="/Users/nicolascerezoo/mega-brain/.env"
MSG="${1:-Sync skill oferta-irresistible}"

echo "→ Copiando skill (excluyendo la carta real)…"
rm -rf "$DST"
mkdir -p "$DST"
rsync -a --exclude 'referencia/ejemplo-carta-hto.md' --exclude '.gitignore' "$SRC/" "$DST/"

# Red de seguridad: aborta si la carta real se ha colado
if [ -f "$DST/referencia/ejemplo-carta-hto.md" ]; then
  echo "✋ ABORTADO: la carta real de HTO se ha colado en el paquete. Revisa." >&2
  exit 1
fi

echo "→ Regenerando ZIP del cliente…"
ZIPTMP="$(mktemp -d)"
mkdir -p "$ZIPTMP/oferta-irresistible"
rsync -a "$DST/" "$ZIPTMP/oferta-irresistible/"
rm -f "$REPO_DIR/dist/oferta-irresistible.zip"
( cd "$ZIPTMP" && zip -r -q "$REPO_DIR/dist/oferta-irresistible.zip" oferta-irresistible -x '*.DS_Store' )
rm -rf "$ZIPTMP"

# Verificación final del ZIP
if unzip -l "$REPO_DIR/dist/oferta-irresistible.zip" | grep -qi 'ejemplo-carta-hto'; then
  echo "✋ ABORTADO: el ZIP contiene la carta real. No se hace push." >&2
  exit 1
fi

echo "→ Commit y push…"
cd "$REPO_DIR"
git add -A
if git diff --cached --quiet; then
  echo "Nada que sincronizar (sin cambios)."
  exit 0
fi
PAT="$(grep -E '^GITHUB_PAT=' "$ENV_FILE" | cut -d= -f2- | tr -d '"'"'"' ')"
git -c user.name="Nicolás Cerezo" -c user.email="cerezoalvarez.nico@gmail.com" \
  commit -q -m "$MSG

Co-Authored-By: Claude Opus 4.8 (1M context) <noreply@anthropic.com>"
git push -q "https://${PAT}@github.com/nicolascerezoo/hto-skills.git" main
echo "✓ Sincronizado y pusheado: https://github.com/nicolascerezoo/hto-skills"
