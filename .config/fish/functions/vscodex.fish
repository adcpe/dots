function vscodex -d "Backups and installs VSCode extensions"
    switch $argv[1]
        case install in
            echo "Starting installation of extensions"
            echo ""
            while read -a line
                eval code --install-extension $line
                echo ""
            end <$VSCODEX_FILE
            set -l num (count < $VSCODEX_FILE)
            echo "Finished installing $num extensions."
        case backup b
            eval code --list-extensions >$VSCODEX_FILE
            set -l num (count < $VSCODEX_FILE)
            echo "Saved $num extensions."
        case silent-backup sb
            eval code --list-extensions >$VSCODEX_FILE
        case list ls
            while read -a line
                echo "$line"
            end <$VSCODEX_FILE
        case "" help h
            echo vscodex
            echo "Script to mass-install extensions or create a list of currently installed extensions on VSCode."
            echo ""
            echo "Usage: vscodex [command]"
            echo ""
            echo Commands
            echo "      install i           : Install extensions from list"
            echo "      backup b            : Backup extensions to list"
            echo "      silent-backup sb    : Backup extensions to list, no message"
            echo "      list ls             : List installed extensions"
            echo "      help h              : Print this help message"
            echo ""
            echo Variables
            echo "       \$VSCODEX_FILE  Extension list path. Location: $VSCODEX_FILE" | string replace --regex -- $HOME \~
            echo ""
        case "*"
            echo "vscodex: Unknown command: \"$argv\"" >&2 && return 1
    end
end
