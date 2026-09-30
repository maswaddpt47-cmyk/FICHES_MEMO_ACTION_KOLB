# CHANTIERS — Générateur de fiches Action, Mémo et Kolb

État au **30/09/2026** — commit de référence : voir `git log -1 main` (branche `main`, déployé).

Outil : `fichegenerator.html`, en ligne sur
https://maswaddpt47-cmyk.github.io/FICHES_MEMO_ACTION_KOLB/fichegenerator.html
Déploiement GitHub Pages automatique à chaque push sur `main` (`.github/workflows/deploy.yml`).

## Chantier en cours

1. **Ajustements de présentation et de charte graphique** — annoncés par l'utilisateur
   pour le 30/09/2026, après relecture au bureau. Contenu pas encore précisé : attendre
   ses retours (codes couleur exacts, polices, règles d'usage des logos, captures
   annotées) avant de toucher à la mise en page.

## Décisions à trancher

Aucune en attente au 29/09/2026.

## Limites connues (acceptées, pas des bugs)

- **PPTX sans slide de section** (ex. « Sécuriser ses achats en ligne ») : une seule
  partie détectée, donc les versions 1h / 1h30 raccourcissent encore par la fin. Remède
  côté PPTX : une slide titre seule par partie.
- **Kolb 1h30** : mise en situation + retour collectif prennent 35 min ; il reste 35 min
  pour l'apport et l'application, donc peu de slides retenues, le reste est listé
  « si le temps le permet ». Kolb « complet » n'a pas de plafond (3h09 sur l'atelier mail).
- L'ordre des slides du PPTX est repris tel quel : un PPTX mal ordonné donne des fiches
  mal ordonnées.

## Points à ne pas défaire

- **Bloc gabarit** (slides 2 à 4 + 2 dernières) exclu **seulement s'il est détecté**
  (≥ 2 des slides 2 à 4 parlent du Département / des conseillers numériques / Déclic),
  avec une case pour forcer. L'exclusion par position fixe amputait les PPTX sans gabarit
  (slides « arnaques », « points de vigilance », « résumé » perdues).
- **PPTX portrait refusé** d'office : c'est une fiche déjà générée, pas un support
  d'atelier (l'utilisateur en a déposé trois par erreur le 29/09/2026).
- **Aucun contenu inventé** : pas d'étape « Contenu à compléter », pas de texte de repli
  pour l'étape 3 Kolb ; si le PPTX ne fournit rien, l'outil bloque avec un message.
  Seule exception, voulue par l'utilisateur le 30/09/2026 : les champs Kolb (étapes 1, 2
  et consigne d'application) sont **pré-remplis par règles** à partir du titre et des
  parties du PPTX (`suggestKolb`), modifiables ; un champ modifié par l'animateur n'est
  jamais écrasé, sauf clic sur « Reprendre les suggestions du PPTX ». Pas d'IA : page
  statique sans serveur.
- **Slides « Étape N : … »** = pratique (5 min), dans le Mémo et en étape 4 Kolb.
  « ÉTAPE 1 SUR 3 » est un compteur, jamais un titre.
- **Slide sans texte hors titre** = séparateur de partie : bandeau dans le déroulé,
  intertitre dans le Mémo et la Kolb, 0 min.
- **Versions raccourcies partie par partie** (`trimByParts`) : théorie retirée avant la
  pratique, chaque partie garde au moins une slide. Couper par la fin supprimait la partie
  « Ajouter une pièce jointe ».
- **Mémo toujours complet**, quelle que soit la version (`-memo-complet.docx`) : c'est le
  document que le participant garde.
- **Puces** : intitulé court + explication = une puce « Intitulé : explication » ; un
  intitulé suivi d'au moins 3 phrases longues est un sous-titre de liste (sinon
  « À éviter absolument » se colle à la seule première ligne et « Payer par virement »
  se lit comme un conseil). Tableaux, réels ou dessinés en zones de texte : une puce par ligne.
- **Objectifs** repris de la slide Sommaire / Programme quand elle existe.
- **Charte actuelle** : Calibri partout, titres en bleu CD47 `#078AC0` (mesuré sur le logo
  Lot-et-Garonne) ; logos dans `assets/logos/` — en-tête Lot-et-Garonne / Déclic 47,
  pied de page RF-ANCT / Conseiller numérique. La page doit être servie en HTTP pour les
  charger.
- **Pas d'OCR** : décision du 29/09/2026 (gain faible, dépendance lourde).
- `maswaddpt47-cmyk/fiches-generator` sert de **référence en lecture seule** : ne jamais
  le modifier (consigne de l'utilisateur).

## Vérifier un changement

Pas de suite de tests dans le dépôt. Méthode utilisée le 29/09/2026 : piloter la page dans
Chromium (Playwright, librairies CDN servies depuis des copies locales car jsdelivr est
bloqué dans l'environnement cloud), générer les trois documents sur les PPTX réels
fournis par l'utilisateur, puis contrôler les .docx (python-docx, `validate.py` du skill
docx, rendu LibreOffice). Les PPTX de test ne sont pas dans le dépôt : les redemander.
