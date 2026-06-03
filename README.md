# LinkedIn Scroll Fix

A Firefox extension that fixes slow scrolling on [LinkedIn].

Unlike most browsers, which use a fixed pixel amount per wheel tick, Firefox bases scroll distance
on the font size of the page's outermost container. On LinkedIn, that container uses an unusually
small font size, which makes scrolling feel much slower than expected. This extension overrides that
value with a standard font size, restoring normal scroll speed without affecting the page's
appearance.

## License

This project is licensed under the [MIT License].

[linkedin]: https://www.linkedin.com
[mit license]: LICENSE.md
