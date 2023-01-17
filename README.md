# adcpe's dotfiles

## Requirements

- Git
- cURL
- Fish

## Redot

These commands will download and run the setup script for the `dotfiles`.

The first one will download a file to `~/.config/fish/functions/redot.fish`. This is a fish function that can then be executed immeadiately to clone everyhting from this repository.

```console
$ curl -Lks https://sh.adc.li/dots.sh | sh
$ redot
```

## Git

`dots` is an alias for `git --git-dir=$HOME/.config/dots/git/ --work-tree=$HOME` in the `$HOME` directory.

---

As seen in https://www.atlassian.com/git/tutorials/dotfiles
