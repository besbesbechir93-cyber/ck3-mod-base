# GFX for CK3 Dynastic Cycle (current 1.20.1.1)

**29 exclusive DDS graphic paths** are listed in `MANIFEST_GFX_EXCLUSIFS.csv`, with expected original byte sizes and SHA256 digests. **81 different graphic paths** (including shared vanilla textures) are directly referenced in the original dedicated scripts/GUI, documented in `REFERENCES_GFX_SOURCES_DIRECTES.json`.

Latest source Git state checked on 2026-10-17: `besbesbechir93-cyber/ck3-mod-base` `master` CK3 1.20.1.1. All 29 original metadata entries are unchanged from the older 1.20.0.3 source; the 3 updated dedicated scripts/GUI introduce no added/removed graphic reference paths. The Cycle map-mode script block is unchanged.

**The actual .dds image contents are not on GitHub.** The mirror replaces binary DDS with JSON metadata of roughly 166–168 bytes. These are not DDS images and cannot be converted to PNG.

To obtain the actual DDS, use the game's installed `game/gfx` path with `EXTRAIRE_GFX_CYCLE.ps1` and the CSV manifest. The collector preserves the file tree, verifies SHA256 and can optionally convert with ImageMagick. A ready-to-run standalone collector bundle is separately downloadable from ChatGPT.

Do not overwrite vanilla shared textures. No real DDS/PNG has been uploaded to this extraction branch.
