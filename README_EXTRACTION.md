# Chinese Dynastic Cycle — CK3 1.20.1.1 source extraction (NO DDS binaries)

Official source used: `besbesbechir93-cyber/ck3-mod-base` at `master`, commit `9a5d0ff6e105297755e19d574cbf4eacdd972709`, vanilla **CK3 1.20.1.1 Crozier**.

## What is actually included

- **18** vanilla scripts/events/history/GUI files, unchanged except that the 3 files modified in 1.20.1.1 were refreshed directly from `master`.
- **74** vanilla localization files in 9 languages, with 9 changed 1.20.1.1 situation files refreshed.
- New `audit_1_20_1_1/` directory: 36 common/shared original vanilla files read and catalogued with current 1.20.1.1 git SHA, exact lines and surrounding context. These are **references only**; never copy/overwrite the full common/shared files.
- `audit/DYNASTIC_CYCLE_MAPMODE_EXTRACT.txt` contains the specific map mode block; verified textually unchanged under 1.20.1.1. It is not a standalone map mode file.
- `gfx_audit/`: path manifests for 29 dedicated textures and 81 direct GFX references. The 29 referenced DDS metadata blobs were checked unchanged between 1.20.0.3 and 1.20.1.1. The three updated scripts/GUI did not add/remove any graphic path.

## IMPORTANT: DDS image binaries are NOT included

The mirror's .dds files contain tiny **JSON metadata only**, rather than original DirectDraw Surface bytes. Their included SHA256 and original sizes are only for comparing against DDS extracted from an installed copy of CK3. Do NOT try to load these metadata stubs as .dds or convert them to PNG.

Use `gfx_audit/EXTRAIRE_GFX_CYCLE.ps1` together with `gfx_audit/MANIFEST_GFX_EXCLUSIFS.csv` on your **local CK3 installation** to collect the genuine DDS and optionally convert to PNG. A downloadable standalone collector bundle was also provided in ChatGPT.

## Remaining limits

This is a verified **source extraction**, not a playable standalone mod. The shared reference audit is a scan of direct cycle names and relevant callbacks, not a proven exhaustive recursive dependency closure or gameplay validation. The game engine's generic dependencies remain supplied by vanilla. To integrate with Diwan, merge cycle-specific fragments without overriding shared CK3 1.20.1.1 GUI and other vanilla functionality.

**The vanilla `master` branch has not been changed by this extraction.**
