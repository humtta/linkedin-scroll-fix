#!/usr/bin/env bash

set -eo pipefail

# Project root directory
root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

manifest_file="${root_dir}/src/manifest.json"
css_file="${root_dir}/src/inject.css"

# Paths relative to the project root directory
icon_file_rel='src/assets/icon.svg'
script_file_rel='script.user.js'

namespace='https://github.com/humtta/linkedin-scroll-fix'

# Get manifest metadata
name="$(jq -r '.name' "${manifest_file}")"
description="$(jq -r '.description' "${manifest_file}")"
version="$(jq -r '.version' "${manifest_file}")"
match="$(jq -r '.content_scripts[0].matches[0]' "${manifest_file}")"
run_at="$(jq -r '.content_scripts[0].run_at' "${manifest_file}")"
run_at="${run_at//_/-}" # Replace _ with -

# Get CSS file content
css="$(<"${css_file}")"

# Generate userscript
cat <<-EOF >"${root_dir}/${script_file_rel}"
	// ==UserScript==
	// @name         ${name}
	// @description  ${description}
	// @version      ${version}
	// @author       Hugo Marotta <humtta@proton.me>
	//
	// @copyright    © 2026 Hugo Marotta (https://github.com/humtta)
	// @license      MIT
	//
	// @match        ${match}
	// @grant        GM_addStyle
	// @run-at       ${run_at}
	//
	// @namespace    ${namespace}
	// @icon         ${namespace}/raw/main/${icon_file_rel}
	// @updateURL    ${namespace}/raw/main/${script_file_rel}
	// @downloadURL  ${namespace}/raw/main/${script_file_rel}
	// ==/UserScript==

	(() => {
	  "use strict";

	  GM_addStyle("${css}");
	})();
EOF
