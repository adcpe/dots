function refresh_mirrors -d 'Update pacman mirrorlist'
    if not command --search --quiet reflector
        echo ''
        echo 'Installing reflector.'
        echo ''
        sudo pacman -S reflector
    end

    echo ''
    echo 'Searching fastest mirrors. Please wait...'
    echo ''
    sudo reflector --verbose --country "Canada,United States,Brazil," --latest 10 --protocol http,https --sort rate --save /etc/pacman.d/mirrorlist
    echo ''
    echo 'Operation complete!'
    echo 'Installing updates.'
    echo ''
    sudo pacman -Syyu
end
