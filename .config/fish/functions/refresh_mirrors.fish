function refresh_mirrors -d "Update pacman mirrorlist"
    if not command --search --quiet reflector
        echo ""
        echo "Installing reflector."
        echo ""
        sudo pacman -S --needed --noconfirm reflector
    end

    echo ""
    sudo reflector --verbose --country us --fastest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
    echo ""
    set fish_trace
    echo ""
    sudo bat /etc/pacman.d/mirrorlist
    echo ""
end
