# Dotfiles

## Requirements

- Git
- Curl

## Restore script

Install config tracking in your \$HOME by running:

```console
curl https://gitlab.com/adcpe/dots/-/raw/main/.config/restore-dots.fish -o $HOME/.config/restore-dots.fish && $HOME/.config/restore-dots.fish
```

## Git commands

`dots` acts as an alias for `git` in the `$HOME` directory.

---

_As seen in https://www.atlassian.com/git/tutorials/dotfiles_
