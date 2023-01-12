function pk -d 'Search packages inside a browser.'
    switch $argv[1]
        case main
            open "https://archlinux.org/packages/?sort=&q=$argv[2]"
        case aur
            open "https://aur.archlinux.org/packages?O=0&SeB=nd&K=$argv[2]&outdated=&SB=n&SO=a&PP=50"
        case help ''
            echo "Usage: pk main <package>          Search the main packages"
            echo "       pk aur <package>           Search the AUR"
            echo "       pk help                    Show this output"
        case '*'
            echo "pk: Unknown command: \"$argv\"" >&2 && return 1
    end
end
