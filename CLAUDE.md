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

## Propositions d'amélioration et de nouveautés

(MD-LIB `collaboration.md`, règle 22, demande du 03/10/2026 renforcée le 25/10/2026). Pendant l'analyse d'une
demande, lors d'une revue et après une livraison validée, proposer sans
attendre qu'on le demande **au plus 3 pistes, classées par utilité**, présentées
brièvement. Anticiper les besoins encore non exprimés et chercher les fonctions
manquantes. Examiner aussi la pertinence de l'existant : recommander de
simplifier, réunir ou retirer ce qui encombre, lorsqu'un constat le justifie.
Chercher **dans** l'outil et **autour** : tâches encore faites sur tableur,
par mail ou sur papier, demandes répétées de l'équipe ou de la hiérarchie.
Pour chaque piste, préciser le problème observé, le bénéfice attendu et
**le choix recommandé**, en évaluant aussi la complexité ou la charge ajoutée
pour l'utilisateur. Donner un avis net et argumenté, appuyé sur les usages,
les retours et les chantiers ; signaler les hypothèses. Éviter les idées
forcées pour remplir un quota et le flux permanent de suggestions.
L'utilisateur décide de la réalisation des changements supplémentaires.
Consigner chaque piste dans « Pistes » de `CHANTIERS.md` : *proposée, en
attente* ou *écartée*, avec date et raison ; ne pas reproposer une piste
écartée sans fait nouveau.

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
Un comportement qui change **emporte ses textes** : dans la même livraison, corriger tous
les textes visibles qui décrivent l'ancien comportement (aide, annonces, messages), ou les
signaler. Une capture envoyée pour valider un point **se lit en entier** : toute incohérence
visible ailleurs se signale, en hypothèse, sans corriger d'office. Toute heure donnée est
en **heure de Paris** (GitHub et les API affichent l'UTC) (règles 8bis, 23 et 24, 20/10/2026).
**L'utilisateur décide, Claude propose** : toute déviation d'une consigne, tout choix de
garder, retirer ou remplacer un élément demandé se demande **avant** d'être fait ;
l'utilisateur a le dernier mot, jamais d'« écart assumé » tranché seul. Au changement de
session annoncé : relever les règles de collaboration nées pendant la session et absentes
des `.md`, les présenter, puis les inscrire (règles 4 et 32, 19/10/2026).
