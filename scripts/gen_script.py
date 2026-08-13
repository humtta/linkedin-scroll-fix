#!/usr/bin/env python

from json import loads
from pathlib import Path
from textwrap import dedent

ROOT_DIR = Path(__file__).resolve().parent.parent
SRC_DIR = ROOT_DIR / "src"
ASSETS_DIR = SRC_DIR / "assets"

MANIFEST_FILE = SRC_DIR / "manifest.json"
CSS_FILE = SRC_DIR / "inject.css"
ICON_FILE = ASSETS_DIR / "icon.svg"
SCRIPT_FILE = SRC_DIR / "script.user.js"

NAMESPACE = "https://github.com/humtta/linkedin-scroll-fix"

TEMPLATE = dedent("""
    // ==UserScript==
    // @name         {name}
    // @description  {description}
    // @version      {version}
    // @author       Hugo Marotta <humtta@proton.me>
    //
    // @copyright    © 2026 Hugo Marotta (https://github.com/humtta)
    // @license      MIT
    //
    // @match        {match}
    // @grant        GM_addStyle
    // @run-at       {run_at}
    //
    // @namespace    {namespace}
    // @icon         {icon_url}
    // @updateURL    {script_url}
    // @downloadURL  {script_url}

    (() => {
      "use strict";

      GM_addStyle(`
        {css}
      `)
    })();
""")

manifest = loads(MANIFEST_FILE.read_text(encoding="utf-8"))
css = CSS_FILE.read_text(encoding="utf-8")
