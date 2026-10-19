# Fate of al-Umma — reprise fidèle de « Conception politique islamique »
**Source :** https://chatgpt.com/share/6ad68a80-4e54-83e9-ba14-b88c9320dcb7  
**État reconstitué :** 2026-10-19  
**Base jouée en dernier :** `FOU_Decisions_Test_Candidate_v1.4.zip` (mentionnée dans la conversation partagée ; **archive non récupérée dans ce dépôt**).  
**Portée :** fiche de reprise et cahier des charges, **pas** un correctif ni une preuve de compatibilité du code.

## 1. Objectif non négociable
Livrer **un mod CK3 complet et jouable**, avec très peu d'interventions du joueur pendant la conception, représentant la vie politique, administrative, sociale et fiscale islamique des **Rāshidūn, Omeyyades et Abbassides**. L'architecture est **un seul gouvernement islamique évolutif** ; ne pas créer trois gouvernements indépendants par dynastie/période. Les mécanismes romains/byzantins/chinois peuvent inspirer l'implémentation technique, mais l'institution, le contenu et la jouabilité doivent être historiquement spécifiques au monde islamique.

## 2. Exigences exprimées par l'utilisateur
1. **Gouvernement unique Diwan** : règles évolutives selon période et situation ; fiscalité, administration, nominations, succession avec parts d'hérédité, maisons influentes, diwans et méritocratie.
2. **Holding territorial propre : Madīna** : une cité islamique, ni château ni église ni temple-citadelle ; permettre bâtiments civils, religieux, militaires et savants pertinents.
3. **Enseignement et examens** : progression par maktab/madrasa et lettrés ; s'inspirer du système d'examens chinois, mais déclencher le cursus à partir d'un **bâtiment ordinaire**, pas d'un duchy building.
4. **Estate islamique unique** : résidence et vie de la maison musulmane, historiquement distincte des estates occidentaux/byzantins. Le **Dār al-Usra** et la **House Unity** sont des bases existantes à conserver.
5. **Charges territoriales liées aux titres** : baronnie, comté, duché, royaume ; charges distinctes de la possession des terres, des ministères et des simples court positions. Un **imam par baronnie**, sous la tutelle du détenteur local. Employer des titres historiquement pertinents ; **ne pas traduire automatiquement baron par ʿāmil**, rôle variable selon l'époque.
6. **Vassaux** : le système Diwan doit aussi s'appliquer aux vassaux ; le test de propagation avec +60 mérite a été confirmé par le joueur.
7. **Compatibilité** : modifier les fichiers GUI/vanilla au minimum ; une adaptation n'est acceptable que si elle touche les ajouts Diwan et **ne change pas la jouabilité des personnages non Diwan**. Pas de faux affichage qui contourne la mécanique native.

## 3. Chronologie de tests (constats de la conversation)
| Version | Résultat |
|---|---|
| v0.3 | Prototype gouvernement, Madīna, estate, maktab, décision d'adoption ; non déclaré complet |
| v0.4 | Joueur : tests 1 gouvernement, 2 Madīna, 3 House Unity, 5 Maktab OK ; test 4 estate grisé ; mérite invisible |
| v0.5 | Correction proposée de création du titre familial ; pas de validation indépendante conservée ici |
| v0.6 | Joueur : tests 1–5 OK ; estate débloqué ; mérite toujours invisible |
| v0.7 | Test 6B rang : grisé ; condition de 9e rang, donc diagnostic inadapté aux points |
| v0.8 | Test 6B valeur : **60 points de mérite confirmés en jeu** ; rang ≠ valeur |
| v0.9 | Jauge forcée visible via deux fichiers GUI vanilla ; **approche rejetée** par l'utilisateur |
| v1.0 | Retour en arrière des modifications GUI ; jauge native non résolue |
| v1.1 | Effet de création familiale spécifique Diwan ; retest de l'estate nécessaire |
| v1.2 | Ajout `character_max_merit_level_add = 1` spécifique Diwan ; joueur : **ne résout pas la jauge** |
| v1.3 | Paramètres meritocratic appliqués à Diwan ; deux notifications « Law Removed » observées ; **impact sur les lois à examiner, pas validé** |
| v1.4 | Test 7 convertit vassaux directs musulmans de rang comte+ au Diwan, prépare Madīna et titre familial, ajoute 60 points une fois ; joueur : **« it work »**, puis confirme **jauge visible sur un vassal Diwan** |

## 4. Dernière comparaison en jeu
- Meritocratic Realm et Meritocratic Governorship : captures fournies.
- Celestial Realm et Celestial Governorship : captures fournies.
- Diwan Governorship : capture du duc de Tunis.
- La jauge de mérite visible sur **un vassal Diwan** montre qu'un affichage vanilla fonctionne dans au moins un cas, sans forcer le GUI. Le fait qu'elle soit absente sur un autre personnage Diwan ne s'explique pas à lui seul par l'indépendance ou le rang.
- L'affichage Realm/Governorship **ne prouve pas** l'existence de deux définitions de gouvernement : vérifier conditions de titre/statut, localisation et moteur.
- La valeur de mérite **60** ne signifie pas rang 1 ; le test de rang grisé n'est pas contradictoire.

## 5. Prochaine tâche technique, prioritaire
**Reprendre depuis la vraie archive v1.4** et isoler la différence entre :
- le vassal Diwan dont la jauge apparaît,
- le personnage Diwan dont la jauge est absente,
- un vassal meritocratic/celestial vanilla comparable.

Étapes :
1. Importer la **v1.4 exacte** dans une branche de travail séparée, sans écraser le code existant.
2. Inventorier les fichiers du mod et contrôler les définitions `diwan`, les flags, `merit = yes`, `merit_level`, les estates, les contrats et les lois.
3. Vérifier l'effet `Test 7` et ses conditions d'idempotence ; ne pas casser la propagation déjà validée.
4. Examiner `Character.ShouldShowMerit` côté GUI vanilla comme **condition observable**, sans supposer son implémentation interne ; comparer rang, gouvernement, type de titre, liege, estate, ressources et flags sur les mêmes personnages.
5. Ajouter des **décisions de diagnostic ciblées au mod v1.4** (pas des décisions d'adoption destructives) : identité du gouvernement, rang/statut, valeur/rang de mérite, flags, trésorerie, estate, lois, vassaux ; tests réversibles ou en lecture seule.
6. Tester les cas en jeu, puis corriger **seulement le code Diwan** si la cause est confirmée.
7. Une fois les fondations stables, poursuivre l'implémentation réelle des examens, charges d'imam/territoriales, fiscalité, succession et institutions historiques jusqu'à une version complète jouable.

## 6. Contraintes de sécurité et de livraison
- Ne pas modifier la base vanilla ni la branche principale pour un test.
- Préserver Madīna, Dār al-Usra, House Unity, Maktab, contrats, décisions existantes et propagation aux vassaux.
- Les **24 décisions** présentes sur cette branche GitHub sont un module de diagnostic **indépendant, non installé, non testé dans CK3**, et **ne remplacent pas** les décisions historiques de la v1.4.
- Les liens `sandbox:/workspace/scratch/.../FOU_Decisions_Test_Candidate_v1.4.zip` apparaissent dans le partage, mais **leur chemin ne rend pas le ZIP accessible à cette session**. Le code du gouvernement Diwan n'est pas dans `ck3-mod-base/mod` à ce jour.
- Aucun correctif Diwan ne doit être annoncé comme implémenté ou validé sans avoir reçu les sources exactes et effectué les contrôles nécessaires.

## 7. État de reprise
**VALIDÉ EN JEU (retours utilisateur) :** v0.6 tests 1–5, v0.8 mérite numérique 60, v1.4 Test 7 propagation, jauge visible sur un vassal Diwan.  
**NON VALIDÉ / À EXAMINER :** jauge sur tous les profils Diwan, lois affectées par v1.3, estate après effet dédié v1.1, autres fonctionnalités historiques.  
**BLOCAGE D'ACCÈS :** ZIP v1.4 ou dossier actuel `Fate_of_al_Umma` nécessaire pour faire une modification fidèle et non destructive.  
**NE PAS CONFONDRE :** le dépôt CK3 de référence et les vrais fichiers du mod.
