#!/usr/bin/env bash
# Sincroniza TODAS las skills de la suite desde la copia de trabajo (mega-brain)
# al repo público, EXCLUYENDO material interno de HTO, regenera un ZIP por skill
# y hace push.
# Uso:  ./sync.sh "mensaje de commit"
set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILLS_SRC="/Users/nicolascerezoo/mega-brain/.claude/skills"
PLUGIN_SKILLS="$REPO_DIR/plugins/hto-suite/skills"
ENV_FILE="/Users/nicolascerezoo/mega-brain/.env"
MSG="${1:-Sync suite hto}"

# Skills que componen la suite
SKILLS=(oferta-irresistible vsl-script secuencias-email landing-copy)

# Archivos internos que NUNCA se publican (se excluyen en TODAS las skills)
EXCLUDES=(--exclude '.gitignore' --exclude 'ofertas/' --exclude '.DS_Store' \
          --exclude 'referencia/ejemplo-carta-hto.md' --exclude 'referencia/interno-*.md')

for S in "${SKILLS[@]}"; do
  echo "→ Sincronizando '$S' (excluyendo material interno)…"
  rm -rf "$PLUGIN_SKILLS/$S"
  mkdir -p "$PLUGIN_SKILLS/$S"
  rsync -a "${EXCLUDES[@]}" "$SKILLS_SRC/$S/" "$PLUGIN_SKILLS/$S/"

  # Red de seguridad por skill
  if [ -f "$PLUGIN_SKILLS/$S/referencia/ejemplo-carta-hto.md" ]; then
    echo "✋ ABORTADO: material interno colado en '$S'. Revisa." >&2; exit 1
  fi

  # ZIP del cliente (para Claude.ai / Cowork) — una por skill
  ZIPTMP="$(mktemp -d)"
  mkdir -p "$ZIPTMP/$S"
  rsync -a "$PLUGIN_SKILLS/$S/" "$ZIPTMP/$S/"
  rm -f "$REPO_DIR/dist/$S.zip"
  ( cd "$ZIPTMP" && zip -r -q "$REPO_DIR/dist/$S.zip" "$S" -x '*.DS_Store' )
  rm -rf "$ZIPTMP"
done

echo "→ Commit y push…"
cd "$REPO_DIR"
git add -A
if git diff --cached --quiet; then
  echo "Nada que sincronizar (sin cambios)."; exit 0
fi
PAT="$(grep -E '^GITHUB_PAT=' "$ENV_FILE" | cut -d= -f2- | tr -d '"'"'"' ')"
git -c user.name="Nicolás Cerezo" -c user.email="cerezoalvarez.nico@gmail.com" \
  commit -q -m "$MSG

Co-Authored-By: Claude Opus 4.8 (1M context) <noreply@anthropic.com>"
git push -q "https://${PAT}@github.com/nicolascerezoo/hto-skills.git" main
echo "✓ Sincronizado y pusheado: https://github.com/nicolascerezoo/hto-skills"
