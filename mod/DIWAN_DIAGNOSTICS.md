# Diagnostics Diwan — v0.1.0 (CK3 1.20.1.1)

## Objectif
Batterie de **24 decisions de test sans effet** pour comparer Diwan, Celestial, Meritocratic et Clan et separer les points de merite du rang. Il ne s'agit **pas** d'une modification du gouvernement Diwan.

## Sources et perimetre
- Base CK3: `base/.ck3-version.json` (1.20.1.1).
- Gouvernements: `base/game/common/governments/00_government_types.txt`.
- Syntaxe decisions: `base/game/common/decisions/_decisions.info`.
- Declencheurs merit: `base/game/common/scripted_triggers/10_tgp_triggers.txt`.
- Points et rang: `base/game/common/script_values/10_dlc_tgp_china_values.txt`.
- **Code Diwan absent** de ce depot : son identifiant et ses flags ne sont pas supposes.

## Fichiers
- `mod/common/decision_group_types/diwan_diagnostics_group.txt`
- `mod/common/decisions/zz_diwan_diagnostics_decisions.txt`
- `mod/localization/french/diwan_diagnostics_l_french.yml`
- `mod/localization/english/diwan_diagnostics_l_english.yml`

## Installation
Copier ces quatre fichiers dans les memes chemins du **mod Diwan de test**, en conservant son descripteur. Ne pas modifier les fichiers vanilla. Desinstaller le module de diagnostic avant une version publique. Ces fichiers sont proposes dans une branche isolee de `ck3-mod-base`, **non fusionnee**.

## Utilisation
1. Demarrer avec Diwan actif. Ouvrir **Decisions > Diagnostics Diwan**.
2. Tester un souverain independant Diwan, puis un gouverneur Diwan.
3. Tester un personnage Meritocratic, un Celestial, puis un Clan vanilla.
4. Pour chaque decision, noter **visible**, **condition remplie** (verte) ou **non remplie** (rouge). Le bouton de confirmation n'a pas d'effet.
5. Examiner manuellement les panneaux gouvernement, merite, tresorerie, influence, nominations et domaines familiaux. Comparer les captures.
6. Pour les tests 15-17, utiliser un souverain ayant au moins un vassal direct de rang comte ou superieur. Un echec ne prouve pas un defaut de propagation **Diwan** : ces tests verifient uniquement le mecanisme administratif et les flags de merite.

## Matrice des decisions
| No | Controle | Trigger principal |
|---|---|---|
| 01 | Mecanique administrative | `government_has_mechanic = administrative` |
| 02 | Souverain independant | `is_independent_ruler = yes` |
| 03 | Statut de gouverneur | `is_governor_or_admin_count = yes` |
| 04 | Regle de merite | `government_allows = merit` |
| 05 | Indicateur de merite | `government_has_flag = government_has_merit` |
| 06 | Merite au moins 60 | `merit >= 60` |
| 07 | Merite au moins 100 | `merit >= 100` |
| 08 | Rang de merite au moins 1 | `merit_level >= 1` |
| 09 | Rang de merite au moins 3 | `merit_level >= 3` |
| 10 | Tresorerie active | `has_treasury = yes` |
| 11 | Indicateur de tresorerie | `government_has_flag = government_has_treasury` |
| 12 | Indicateur d'influence | `government_has_flag = government_has_influence` |
| 13 | Indicateur de domaine familial | `OR = { government_has_flag = government_has_east_asian_estate government_has_flag = government_has_estate }` |
| 14 | Obligations administratives | `government_has_flag = government_uses_admin_province_obligations` |
| 15 | Un vassal administratif | `any_direct_vassal = { primary_title.tier >= tier_county government_has_mechanic = administrative }` |
| 16 | Tous les vassaux administratifs | `any_direct_vassal = { primary_title.tier >= tier_county } NOT = { any_direct_vassal = { primary_title.tier >= tier_county NOT = { government_has_mechanic = administrative } } }` |
| 17 | Tous les vassaux avec merite | `any_direct_vassal = { primary_title.tier >= tier_county } NOT = { any_direct_vassal = { primary_title.tier >= tier_county NOT = { government_has_flag = government_has_merit } } }` |
| 18 | Controle Meritocratic vanilla | `has_government = meritocratic_government` |
| 19 | Controle Celestial vanilla | `has_government = celestial_government` |
| 20 | Controle Clan vanilla | `has_government = clan_government` |
| 21 | Bureaucratie meritocratique | `government_has_flag = government_uses_meritocratic_bureaucracy` |
| 22 | Bureaucratie celeste | `government_has_flag = government_uses_celestial_bureaucracy` |
| 23 | Budget des traitements | `government_has_flag = government_uses_salary_budget` |
| 24 | Merite du suzerain | `liege ?= { government_has_flag = government_has_merit }` |

## Interprétation
- Tests 04-05 : regle moteur `merit` et indicateur `government_has_merit` sont distincts.
- Tests 06-09 : `merit` est la valeur numerique ; `merit_level` est le rang. Une valeur de 60 et un rang inferieur a 1 ne sont pas contradictoires.
- Tests 10-14 et 21-23 : distinguent les flags affiches et l'etat reel du personnage. Ils ne prouvent pas a eux seuls la presence de tous les panneaux GUI.
- Tests 18-20 : controles positifs sur gouvernements vanilla, pas des tests que Diwan devrait reussir.
- Test 24 : l'echec est normal pour un souverain independant.
- Pour verifier **l'identite exacte du gouvernement Diwan**, son attribution aux vassaux, et les regles de succession, il faut consulter les fichiers source Diwan. Ces points ne peuvent pas etre conclus depuis les flags vanilla seuls.

## Verification et etat
- [x] Syntaxe des constructions de base comparee aux fichiers CK3 1.20.1.1.
- [x] Fichiers independants des definitions vanilla et sans effets mutateurs.
- [ ] Chargement des quatre fichiers dans CK3 (non execute).
- [ ] Verification `error.log` apres chargement.
- [ ] Tests en jeu avec souverain Diwan, gouverneur Diwan et controles vanilla.
- [ ] Lecture des definitions source Diwan et verification des chemins GUI.

## Reprise / resultats
| Profil | Tests reussis | Tests echoues | Observations / captures |
|---|---|---|---|
| Diwan independant | A tester | A tester | |
| Diwan gouverneur | A tester | A tester | |
| Meritocratic vanilla | A tester | A tester | |
| Celestial vanilla | A tester | A tester | |
| Clan vanilla | A tester | A tester | |

## Decision de developpement
Ne pas modifier le gouvernement, les regles de succession ou le GUI avant d'avoir confronte cette matrice aux fichiers Diwan. Les propositions ne valent pas validation fonctionnelle.
