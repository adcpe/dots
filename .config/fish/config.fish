fish_vi_key_bindings

# asdf check
if test -e ~/.config/asdf/.asdf/asdf.fish
    source ~/.config/asdf/.asdf/asdf.fish
else if test -e ~/.asdf/asdf.fish
    source ~/.config/asdf/.asdf/asdf.fish
else if test -e /opt/asdf-vm/asdf.fish
    source /opt/asdf-vm/asdf.fish
else
    echo 'Install asdf'
    echo 'git clone https://github.com/asdf-vm/asdf.git ~/.config/asdf/.asdf --branch v0.xx.x'
end


# starship check
if test -e /usr/bin/starship; or test -e /usr/local/bin/starship
    starship init fish | source
else
    echo 'Install starship'
    echo 'curl -sS https://starship.rs/install.sh | sh'
end
