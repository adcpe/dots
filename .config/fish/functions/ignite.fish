function ignite -a list -d 'Reads a file listing packages and installs them.'
    if not command --search --quiet yay
        echo 'Installing yay!'
        git clone https://aur.archlinux.org/yay.git ~/yay
        cd ~/yay
        makepkg -si
        echo 'Installation finished!'
    end

    echo 'Starting installation of packages...'
    while read -a line
        eval yay -S --noconfirm --needed $line
    end <$list
    echo '...and done.'
end
