# adcpe's dotfiles

## Requirements

- Git
- cURL
- Fish

## Redot

These commands will download and run the setup script for the `dotfiles`.

```console
curl https://gitlab.com/adcpe/dots/-/raw/main/.config/dots/redot.fish -o $HOME/.config/dots/redot.fish

$HOME/.config/dots/redot.fish
```

## Git

`dots` is an alias for `git --git-dir=$HOME/.config/dots/git/ --work-tree=$HOME` in the `$HOME` directory.

---

As seen in https://www.atlassian.com/git/tutorials/dotfiles
