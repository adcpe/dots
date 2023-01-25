function pk -d "Search packages inside a browser."
    switch $argv[1]
        case main m
            open "https://archlinux.org/packages/?sort=&q=$argv[2]"
        case aur a
            open "https://aur.archlinux.org/packages?O=0&SeB=nd&K=$argv[2]&outdated=&SB=n&SO=a&PP=50"
        case help h ""
            echo pk
            echo "Small Fish script to search the Arch Linux repositories or the AUR."
            echo ""
            echo "Usage: pk [command] [query]"
            echo Commands
            echo "      main m [query]          Search the main packages"
            echo "      aur a [query]           Search the AUR"
            echo "      help h                  Show this output"
        case "*"
            echo "pk: Unknown command: \"$argv\"" >&2 && return 1
    end
end
