#!/usr/bin/env python3
"""Vérifier les fichiers source récupérés sans modifier les archives ni le jeu."""
import hashlib
import json
import pathlib
import sys

root = pathlib.Path(__file__).resolve().parent
manifest = json.loads((root / "MANIFESTE_DEPENDANCES.json").read_text(encoding="utf-8"))
errors = []
checked = 0
for f in manifest["files"]:
    rel = f["path"]
    if rel.startswith("/") or ".." in pathlib.PurePosixPath(rel).parts:
        errors.append(f"Unsafe path: {rel}")
        continue
    p = root / rel
    if not p.is_file():
        errors.append(f"Missing file: {rel}")
        continue
    data = p.read_bytes()
    actual = hashlib.sha1(b"blob " + str(len(data)).encode() + bytes([0]) + data).hexdigest()
    if actual != f["git_blob_sha"]:
        errors.append(f"Git SHA mismatch: {rel}: expected {f['git_blob_sha']}, got {actual}")
    checked += 1

graphics = list((root / "game").rglob("*.dds")) if (root / "game").exists() else []
if graphics:
    errors.append(f"Unexpected DDS files: {len(graphics)}")
print(f"Checked {checked}/{len(manifest['files'])} files; shared references: {manifest['shared_references_verified']['files']}; DDS: {len(graphics)}")
for e in errors:
    print("ERROR:", e)
sys.exit(1 if errors else 0)
