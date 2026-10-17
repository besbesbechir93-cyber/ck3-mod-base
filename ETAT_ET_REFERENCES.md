# ETAT DE L'EXTRACTION (hors GFX)

**Source originale** : https://github.com/besbesbechir93-cyber/ck3-mod-base/tree/master/base/game

**Version de CE dépôt** : CK3 **1.20.0.3** (Crozier), fichier `base/.ck3-version.json`. **Ne pas confondre avec jesec/ck3-mod-base version 1.20.1.1**.

**Livraison** : branche dédiée `diwan-dynastic-cycle-hors-gfx-12003`; l'archive de branche GitHub contient uniquement l'extraction.

## Contenu vérifié

- 18 fichiers vanilla non-localisation : situation du cycle, 92 déclarations de catalyseurs (le nombre est un compte d'entrées déclarées, certaines sont annotées comme non implémentées par vanilla), on_actions, triggers, scripted_effects, script_values, décisions, intrigues, secrets, story cycle du Mandat du Ciel, événements du cycle, événements des mouvements et des carrières, historique, fenêtre GUI principale et widget d'événement spécialisé.
- 74 fichiers de localisation originale en 9 langues : anglais, français, allemand, espagnol, japonais, coréen, polonais, russe, chinois simplifié.
- 3 rapports d'extraits de références dans 36 fichiers vanilla partagés : interfaces et on_actions, lois/guerres/interactions, administration/projets/titres. Les extraits sont des informations de raccord, **pas des remplacements prêts à copier dans le dossier game**.
- Les chemins sous `game/` correspondent aux chemins sous `base/game/` de la source.

## Règle stricte de compatibilité

NE PAS placer l'archive entière comme un mod activé CK3 : l'extraction est documentaire, n'est pas un DLC autonome ni un mod terminé. Garder les fonctions génériques de CK3 et les dossiers partagés existants. Pour intégrer à Diwan, fusionner seulement les blocs spécifiques et résoudre les conflits GUI et script avec CK3 1.20.1 avant mise en jeu.

Aucune texture, image, illustration, police ou autre fichier `gfx` n'est inclus, et les références à des chemins `.dds` ne signifient pas que les textures sont présentes.

## Reste à réaliser

- Identifier et isoler chaque bloc exécutable présent dans les fichiers partagés; les rapports fournis ne remplacent pas cette étape.
- Fermer toutes les dépendances indirectes (il reste des interactions, événements, activités et localisations d'autres mécanismes chinois non inclus intégralement).
- Adapter à la version cible finale du jeu (1.20.1.1 ou ultérieure), vérifier les ressources graphiques originelles depuis l'installation, analyser les conflits Diwan et tester en jeu.

## Interdictions de fusion automatique

Ne jamais écraser `gui/hud.gui`, `gui/texticons.gui`, `common/on_action/game_start.txt`, `common/on_action/title_on_actions.txt`, `common/laws/00_realm_laws.txt` ni les autres fichiers partagés par simple remplacement.
