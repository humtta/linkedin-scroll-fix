#!/usr/bin/env python

from json import loads
from pathlib import Path

ROOT_DIR = Path(__file__).resolve().parent.parent
SRC_DIR = ROOT_DIR / "src"

MANIFEST_FILE = SRC_DIR / "manifest.json"
CSS_FILE = SRC_DIR / "inject.css"

manifest = loads(MANIFEST_FILE.read_text(encoding="utf-8"))
