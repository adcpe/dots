fish_vi_key_bindings

if type -q starship
    starship init fish | source
end

if test -f $HOME/.config/asdf/asdf.fish
    source $HOME/.config/asdf/asdf.fish
end

# ASDF configuration code
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

# Do not use fish_add_path (added in Fish 3.2) because it
# potentially changes the order of items in PATH
if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims

if type -q fastfetch
    fastfetch -c examples/13.jsonc
end
