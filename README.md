# Générateur de fiches Action, Mémo et Kolb — CD47

Outil autonome (HTML/JS, sans serveur) : `fichegenerator.html`.

À partir d'un PPTX d'atelier, génère au format Word (.docx) :

1. **Fiche Action** — guide d'animation (objectifs, matériel, déroulé minuté, blocs optionnels, conseils).
2. **Mémo participant** — étapes numérotées, « Bon à savoir », encart « Besoin d'aide ? ».
3. **Fiche action Kolb** — rappel du cycle de Kolb + déroulé minuté en 4 étapes. Le PPTX alimente
   l'apport (étape 3) et les exercices (étape 4) ; la mise en situation (étape 1) et le retour
   collectif (étape 2) sont saisis dans l'outil.

Charte : police Calibri, titres en bleu CD47 `#078AC0`, logos en en-tête et pied de page
(`assets/logos/`). La page doit être servie par HTTP (GitHub Pages) pour que les logos se chargent.

Extraction du PPTX reprise de `maswaddpt47-cmyk/fiches-generator` (`fichegenerator.html`).
