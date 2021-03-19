fish_vi_key_bindings
set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_visual block

set EDITOR nano
set VISUAL nano
set XDG_CONFIG_HOME ~/.config

source ~/.config/fish/alias.fish
source ~/.asdf/asdf.fish
starship init fish | source
