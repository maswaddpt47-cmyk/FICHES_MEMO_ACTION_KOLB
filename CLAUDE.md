# CLAUDE.md — FICHES_MEMO_ACTION_KOLB

**Reprise de session : lire d'abord `CHANTIERS.md`** (état, chantier en cours, points à ne
pas défaire).

## Le projet

Générateur client-side (`fichegenerator.html`, HTML/JS sans serveur) : à partir d'un PPTX
d'atelier, produit en Word une Fiche Action, un Mémo participant et une Fiche action Kolb,
pour les Conseillers Numériques du CD47.

## Git et déploiement

- `git pull` avant toute lecture ou modification.
- Travail sur la branche de session si la plateforme en impose une, puis mise à jour de
  `main` : GitHub Pages ne déploie que `main` (workflow `deploy.yml`).
- Commits conventionnels (`feat:`, `fix:`, `docs:`…), un par modification logique.
- Ne jamais déclarer un changement « en ligne » sans avoir vérifié le déploiement
  GitHub Actions (conclusion `success`) sur le commit poussé.
- `maswaddpt47-cmyk/fiches-generator` : référence en lecture seule, ne jamais le modifier.

## Échanges

Répondre en français, tutoiement, réponses concises.
