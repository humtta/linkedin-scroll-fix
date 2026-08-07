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

## Acknowledgments

This extension is based entirely on [this Reddit comment] posted by
[u/interoth].

## License

This project is licensed under the [MIT License].

[linkedin]: https://www.linkedin.com
[firefox add-ons]: https://addons.mozilla.org/en-US/firefox/addon/linkedin-scroll-fix
[this reddit comment]: https://www.reddit.com/r/linkedin/comments/1qx5wg3/comment/o4rj31i
[u/interoth]: https://www.reddit.com/u/interoth
[mit license]: LICENSE.md
