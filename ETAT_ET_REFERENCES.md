# CK3 Dynastic Cycle — 1.20.1.1 reconciliation (17 October 2026)

Checked against source repository `besbesbechir93-cyber/ck3-mod-base`, current `master` commit `9a5d0ff6e105297755e19d574cbf4eacdd972709`.

| Scope | Checked | Result |
|---|---:|---|
| Dedicated scripts/events/GUI/history | 18 | 3 refreshed for 1.20.1.1; 15 SHA-identical |
| Localizations in 9 languages | 74 | 9 situation localization files refreshed; 65 SHA-identical |
| Shared vanilla reference files | 36 | 36 re-read from current master; 507 matching reference lines, new reports below |
| Specialized DDS texture paths | 29 | Metadata-only, no original binary; relevant source Git subtrees and file blobs unchanged across versions |
| Direct graphics paths in dedicated source | 81 | No new/deleted paths in the three updated dedicated files |
| Dynastic Cycle map-mode snippet | 1 | Compared against current `gfx/map/map_modes/map_modes.txt`; content unchanged |

Updated dedicated scripts/GUI: `common/decisions/dlc_decisions/tgp/tgp_dynastic_cycle_decisions.txt`, `common/on_action/dynastic_cycle_on_actions.txt`, `gui/window_tgp_dynastic_cycle.gui`.

Updated localization files: `localization/{english,french,german,japanese,korean,polish,russian,simp_chinese,spanish}/situations/situation_dynastic_cycle_l_<language>.yml` (one per language).

Current 1.20.1.1 shared-reference reports: `audit_1_20_1_1/GUI_AND_ON_ACTIONS.md`, `audit_1_20_1_1/LAWS_INTERACTIONS_WARS.md`, and `audit_1_20_1_1/ADMIN_PROJECTS_TITLES.md`. The older `audit/` remains as a versioned historical artifact; prefer the new reports and their line numbers.

**DDS content gap:** the source repository's `.dds` paths are JSON stubs with `Binary file excluded from repository. Metadata only.` They cannot produce valid images or PNG conversions. The 29 exact source paths, sizes and SHA256 hashes are in `gfx_audit/MANIFEST_GFX_EXCLUSIFS.csv` for retrieval from the installed game. No image bytes were fabricated.

**Not yet established:** exhaustive recursive closure across all scripts and DLC interactions, runtime compatibility/integration with Diwan, final DDS extraction and in-game testing. This archive must not be enabled as a completed mod.
