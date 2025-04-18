function refresh_mirrors -d "Update pacman mirrorlist"
    if not command --search --quiet reflector
        echo ""
        echo "Installing reflector."
        echo ""
        set fish_trace 1
        sudo pacman -S --needed --noconfirm reflector
    end

    set fish_trace 1
    echo ""
    sudo reflector --verbose --country us --fastest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
    echo ""
    echo "Operation complete!"
    echo ""
    sudo cat /etc/pacman.d/mirrorlist
    echo ""
    set fish_trace
end
