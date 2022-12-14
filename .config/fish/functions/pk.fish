function pk -d 'Searches  packages inside a browser.'
    switch $argv[1]
        case m main
            xdg-open "https://archlinux.org/packages/?sort=&q=$argv[2]"
        case a aur
            xdg-open "https://aur.archlinux.org/packages?O=0&K=$argv[2]"
        case h help ''
            echo "Usage: pk <m> <main> [...]          Search the main packages"
            echo "       pk <a> <aur>  [...]          Search the AUR"
            echo "       pk <h> <help>                Show this output"
        case '*'
            echo "pk: Unknown command: \"$argv\"" >&2 && return 1
    end
end
