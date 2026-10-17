# CK3 Chinese Dynastic Cycle – source extraction (no DDS binaries)

Version: **Crusader Kings III 1.20.1.1 (Crozier)**.
Source: https://github.com/besbesbechir93-cyber/ck3-mod-base/tree/master/base/game
Updated comparison: 2026-10-17.

This branch contains **18 unmodified vanilla scripts/events/GUI/history files**, **74 original localization files in 9 languages**, and an audit of **36 shared files** whose generic functionality must not be duplicated.

Compared with the previous 1.20.0.3 extraction, **12 files were updated** from current master: 3 gameplay/GUI scripts and 9 locale situation files. All other extracted source files matched the current master by Git blob SHA.

The `gfx_audit/` directory identifies **29 cycle-specific DDS textures**, their expected sizes and SHA256 checksums, plus **81 directly referenced graphics paths**, many of which are shared vanilla resources. **The repository DOES NOT provide original DDS images**: files under `base/game/gfx` are tiny JSON stubs saying “Binary file excluded from repository. Metadata only.” Never rename those JSON files to .dds or claim they are images.

To obtain actual DDS binaries, run the safe PowerShell collector in `gfx_audit/EXTRAIRE_GFX_CYCLE.ps1` from your installed CK3 game, beside `gfx_audit/MANIFEST_GFX_EXCLUSIFS.csv`. The script generates a ZIP of genuine DDS and optionally PNG. No install files are modified.

**NOT a ready-to-run CK3 mod.** Shared systems and GUI integration require selective merging and in-game testing. Never overwrite generic vanilla/shared files with audit excerpts.
