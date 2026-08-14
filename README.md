# LinkedIn Scroll Fix

A Firefox extension that fixes slow scrolling on [LinkedIn].

Unlike most browsers, which use a fixed pixel amount per wheel tick, Firefox
bases scroll distance on the font size of the page's outermost container. On
LinkedIn, that container uses an unusually small font size, which makes
scrolling feel much slower than expected. This extension overrides that value
with a standard font size, restoring normal scroll speed without affecting the
page's appearance.

## Installation

Add the extension to Firefox from [Firefox Add-ons].

Alternatively, a userscript version is available. To install it, first install a
userscript manager such as:

- [Tampermonkey] (Multi-browser)
- [Violentmonkey] (Multi-browser)
- [Greasemonkey] (Firefox-only)

Then, open [`script.user.js`] and click the `Raw` button (or simply click
[here]). Your userscript manager will prompt you to install the script. Confirm
the installation.

## Acknowledgments

This extension is based entirely on [this Reddit comment] posted by
[u/interoth].

## License

This project is licensed under the [MIT License].

[linkedin]: https://www.linkedin.com
[firefox add-ons]: https://addons.mozilla.org/en-US/firefox/addon/linkedin-scroll-fix
[tampermonkey]: https://www.tampermonkey.net
[violentmonkey]: https://violentmonkey.github.io
[greasemonkey]: https://addons.mozilla.org/en-US/firefox/addon/greasemonkey
[`script.user.js`]: https://github.com/humtta/linkedin-scroll-fix/blob/main/script.user.js
[here]: https://github.com/humtta/linkedin-scroll-fix/raw/main/script.user.js
[this reddit comment]: https://www.reddit.com/r/linkedin/comments/1qx5wg3/comment/o4rj31i
[u/interoth]: https://www.reddit.com/u/interoth
[mit license]: LICENSE.md
