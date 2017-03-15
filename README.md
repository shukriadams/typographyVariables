Typography Variables 
===
A linter for scss-lint (https://github.com/brigade/scss-lint). Warns on the use of properties affecting type (font, line, word etc). This is useful if you want to enforce typographic consistency with mixins or classes instead of literals.


Config
---

linters:

    TypographyVariables:
        # set to true to enable
        enabled: true

Use
---
This linter is currently not available as a Gem. To use it, place /lib/TypographyVariables.rb in a folder on your system, then add that folder to your .scss-lint.yml file as follows

    plugin_directories: ['/foo/bar']