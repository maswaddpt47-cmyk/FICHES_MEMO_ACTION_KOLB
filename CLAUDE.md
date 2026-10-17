# CLAUDE.md — FICHES_MEMO_ACTION_KOLB

**Reprise de session : lire d'abord `CHANTIERS.md`** (état, chantier en cours, points à ne
pas défaire).

## Le projet

Générateur client-side (`index.html`, HTML/JS sans serveur) : à partir d'un PPTX
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

## Regard extérieur — Codex (06/10/2026)

Une décision qui touche à la sécurité ou aux données
personnelles est soumise à **Codex** (OpenAI, autorisations « Lecture seule »)
avant d'être codée ; l'utilisateur tranche. **Audit Codex** chaque trimestre et
après tout changement structurant de sécurité, avec le modèle MD-LIB
`consigne-audit-externe.md` ; chaque point vérifié dans le code avant d'être
retenu. Codex ne modifie jamais le code. Règle complète : MD-LIB `agora.md` §12.

## AGORA — faire contredire une décision par une autre session (17/10/2026)

`AGORA.md` (racine) suffit pour répondre ; `MD-LIB/agora.md` n'est **pas requis**.
Claude **soumet d'office** un bloc dès qu'un critère est rempli, l'annonce en une
ligne (« ⚖️ AGORA : critère N — … Bloc AG-00N commité. À coller dans l'autre
session : « pull, lis AGORA.md, réponds à AG-00N, tu es la session B » »), et
**ne bloque jamais** : le travail continue, l'utilisateur tranche. Le bloc se
dépose **avant le code**. Critères (vérifiables dans le diff) :
1. la décision ferme une porte (format de données ou d'export, dépendance, contrat) ;
2. deux options envisagées, une seule écrite, sans arbitrage extérieur ;
3. trois itérations sans résolution sur le même problème ;
4. défaire un existant dont la raison d'être n'est pas retrouvée ;
5. contredire une note datée du dépôt (`CLAUDE.md`, `CHANTIERS.md`) ;
6. coût irréversible côté usager (suppression, migration).

**N'y vont pas** : rendu pur, correctif localisé prouvé par un test, tout ce qui se
défait en un commit. Sécurité et données personnelles : Codex (ci-dessus).
**Répondre** : jamais à son propre bloc (comparer les `Claude-Session:`) ;
« confirmé » est une réponse pleine ; aucune appréciation ; sans `fichier:ligne`,
mesure ou log, la réponse ne compte pas. Toute « décision à trancher » de
`CHANTIERS.md` est candidate à un bloc.

## Échanges

Répondre en français, tutoiement, réponses concises.
Ne rien déclarer « testé » ou « réparé » sans l'avoir exécuté. « Validé » ne vaut que
pour ce que l'utilisateur a nommé. Rendu pur : pas de test, mais le mesurer (débordement,
contraste) à 390 px et 1280x720 avant de livrer ; la fonction nouvelle se montre là où il
teste et la réponse dit **où cliquer** en premier (MD-LIB `collaboration.md`, règles 2 et 17).
Avant de décrire un correctif, suivre la valeur sur **tout son chemin** (`then`/`catch`,
appelants, valeurs par défaut), pas la seule ligne à changer. Un nombre annoncé se
**compte par une commande**, pas à l'œil sur une liste. Un fichier partagé entre sessions
(`AGORA.md`, `CHANTIERS.md`, `CLAUDE.md`) se **relit juste avant de rédiger**, pas
seulement à l'ouverture (règles 27, 29 et 30, 17/10/2026).
