set EDITOR nano
set VISUAL nano
set XDG_CONFIG_HOME ~/.config

set -gx PNPM_HOME "$HOME/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH

source ~/.asdf/asdf.fish
starship init fish | source
