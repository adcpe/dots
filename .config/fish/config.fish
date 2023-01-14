fish_vi_key_bindings

# check if asdf is installed and its path
if test -e ~/.config/asdf/.asdf/asdf.fish
    source ~/.config/asdf/.asdf/asdf.fish
else if test -e ~/.asdf/asdf.fish
    source ~/.config/asdf/.asdf/asdf.fish
else if test -e /opt/asdf-vm/asdf.fish
    source /opt/asdf-vm/asdf.fish
end

starship init fish | source
