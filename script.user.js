// ==UserScript==
// @name         LinkedIn Scroll Fix
// @description  Fixes slow scrolling on LinkedIn.
// @version      1.0.0
// @author       Hugo Marotta <humtta@proton.me>
//
// @copyright    © 2026 Hugo Marotta (https://github.com/humtta)
// @license      MIT
//
// @match        *://*.linkedin.com/*
// @grant        GM_addStyle
// @run-at       document-start
//
// @namespace    https://github.com/humtta/linkedin-scroll-fix
// @icon         https://github.com/humtta/linkedin-scroll-fix/raw/main/src/assets/icon.svg
// @updateURL    https://github.com/humtta/linkedin-scroll-fix/raw/main/script.user.js
// @downloadURL  https://github.com/humtta/linkedin-scroll-fix/raw/main/script.user.js
// ==/UserScript==

(() => {
  "use strict";

  GM_addStyle("main { font-size: 16px !important; }");
})();
