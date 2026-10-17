# Reconciliation CK3 1.20.1.1 (17 October 2026)

Source: `besbesbechir93-cyber/ck3-mod-base`, `master`, commit `9a5d0ff6e105297755e19d574cbf4eacdd972709`. The original version metadata is 1.20.1.1 (Crozier).

Comparison with previous extracted branch 1.20.0.3:

- 18/18 core script, event, GUI and history files checked by Git blob SHA; **3 changed**.
- 74/74 locale files across nine languages checked; **9 changed**, each in `localization/<lang>/situations/situation_dynastic_cycle_l_<lang>.yml`.
- Updated exactly these 12 blobs to the corresponding Git SHA from current `master`. Source filenames and placement retained.
- 29 specific DDS paths verified from source directories: icon groups, situation phases, event icons, wheel GUI, 3 illustrations, HUD and flat icon. The directories containing these files and individual remaining exceptions were compared; all **29 metadata entries** are unchanged between 1.20.0.3 and 1.20.1.1.
- **Actual DDS binaries still NOT available** in GitHub. Only metadata stubs, original expected sizes and SHA256. No DDS or PNG supplied; do not use stub JSON as texture.
- Three reference-audit reports document shared-file locations as read in the 1.20.0.3 snapshot; these **reports are not revalidated or updated line-by-line against 1.20.1.1**. Use them as preliminary location hints, not current line numbers. The same caution applies to the extracted map-mode example.
- This is an isolated study/extraction branch; it is NOT a complete playable mod. External events, interactions and indirect dependencies may still need selective integration. Vanilla generic files and `master` were not modified.

Updated core files:
- `game/common/decisions/dlc_decisions/tgp/tgp_dynastic_cycle_decisions.txt`
- `game/common/on_action/dynastic_cycle_on_actions.txt`
- `game/gui/window_tgp_dynastic_cycle.gui`

Updated situation-localization files:
- `game/localization/english/situations/situation_dynastic_cycle_l_english.yml`
- `game/localization/french/situations/situation_dynastic_cycle_l_french.yml`
- `game/localization/german/situations/situation_dynastic_cycle_l_german.yml`
- `game/localization/japanese/situations/situation_dynastic_cycle_l_japanese.yml`
- `game/localization/korean/situations/situation_dynastic_cycle_l_korean.yml`
- `game/localization/polish/situations/situation_dynastic_cycle_l_polish.yml`
- `game/localization/russian/situations/situation_dynastic_cycle_l_russian.yml`
- `game/localization/simp_chinese/situations/situation_dynastic_cycle_l_simp_chinese.yml`
- `game/localization/spanish/situations/situation_dynastic_cycle_l_spanish.yml`
