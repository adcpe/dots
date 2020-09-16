source /opt/asdf-vm/asdf.fish
source ~/.config/fish/alias.fish
source ~/.asdf/installs/rust/1.44.1/env

fish_vi_key_bindings
set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_visual block

set EDITOR vim
set VISUAL vim
set XDG_CONFIG_HOME ~/.config

starship init fish | source
