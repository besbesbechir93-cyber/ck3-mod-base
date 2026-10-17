# GFX du cycle dynastique — vérification réelle

Ce manifeste recense **29 textures exclusives identifiées** par leurs vrais chemins, tailles et empreintes SHA256 dans la base CK3 1.20.0.3. Les données sont issues du dépôt source `besbesbechir93-cyber/ck3-mod-base`.

**Attention : aucune de ces textures binaires n'est disponible dans ce dépôt.** Les fichiers `.dds` qui s'y trouvent sont des textes JSON de 166 à 168 octets disant `Binary file excluded from repository. Metadata only.`, **et non des images**. Les textes ont une taille et une empreinte SHA256 des images originelles pour les vérifier quand on les a.

Les archives utilisateur inspectées (`CK3_Fusion_Unique.zip` et `Diwan_lot53_restauration_artefacts_ECV_original_candidate (1).zip`) ne contiennent aucun fichier dont le nom reprend `dynastic_cycle`, `tgp_dynastic`, ou `type_dynastic`. Aucune conversion PNG n'est réalisable sans DDS réels.

Il faut distinguer **29 GFX spécifiques et exclusifs**, des **81 chemins graphiques différents directement appelés** dans les fichiers de scripts/GUI dédiés : ces derniers comprennent majoritairement des ressources communes déjà fournies par CK3. Le second inventaire est dans `REFERENCES_GFX_SOURCES_DIRECTES.json`.

La carte du cycle utilise en outre un bloc spécifique dans le fichier vanilla partagé `gfx/map/map_modes/map_modes.txt`; le bloc est isolé dans `audit/DYNASTIC_CYCLE_MAPMODE_EXTRACT.txt`, **à ne pas charger tel quel** puisqu'il dépend de variables de map mode définies dans le fichier partagé.

**Rien n'a été copié pour remplacer les fichiers vanilla partagés et aucune image vide ou JSON déguisé en DDS n'est fournie.**
