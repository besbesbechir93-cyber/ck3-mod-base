# ETAT DE L'EXTRACTION — 2026-10-17

- Source: `besbesbechir93-cyber/ck3-mod-base`, version vanilla **1.20.0.3** (fork utilisateur).
- **17** fichiers spécialisés du cycle dans `game/`.
- **63** localisations en 9 langues dans `game/localization/`.
- **48** fichiers vanilla partagés analysés **sans recopie complète**.
- **632** occurrences de références répertoriées avec numéro de ligne et contexte dans `ANALYSE_REFERENCES/`.
- **0** fichier GFX.
- Fichiers originaux reproduits sans reformatage par réutilisation de leurs objets Git (SHA inscrits au manifeste).

## Statut

**EXTRACTION DES SOURCES REALISEE.** Les scripts du jeu sont réellement présents dans ce dépôt d'extraction.

**NON TESTE EN JEU et NON PRET EN TANT QUE MOD AUTONOME.** Les fichiers communs sont volontairement laissés en référence pour ne pas casser CK3. La couverture des dépendances indirectes peut encore nécessiter une vérification supplémentaire. Un travail de migration 1.20.1.1 est indispensable si cette version est visée.

## Contrôle

Depuis la racine du paquet (dossier avec `MANIFESTE_DEPENDANCES.json`), lancer `python VERIFIER_EXTRACTION.py` pour vérifier les 80 fichiers et leurs empreintes Git.
