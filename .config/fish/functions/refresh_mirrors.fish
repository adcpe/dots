function refresh_mirrors -d "Update pacman mirrorlist"
    set fish_trace 1
    if not command --search --quiet reflector
        echo ""
        echo "Installing reflector."
        echo ""
        sudo pacman -S --needed --noconfirm reflector
    end

    echo ""
    sudo reflector --verbose --country br,ar,us,ca --fastest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
    echo ""
    echo "Operation complete!"
    echo ""
    sudo cat /etc/pacman.d/mirrorlist
    echo ""
    set fish_trace
end
