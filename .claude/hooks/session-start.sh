#!/bin/bash
# Session start hook — FICHES_MEMO_ACTION_KOLB
# Rappel de ménage de CHANTIERS.md au démarrage de chaque session (locale comprise).
# Script repris de ATELIERS_NEWGEN (règle MD-LIB/collaboration.md, 8ter).
bash "$CLAUDE_PROJECT_DIR/scripts/check-chantiers.sh" "$CLAUDE_PROJECT_DIR/CHANTIERS.md"
exit 0
