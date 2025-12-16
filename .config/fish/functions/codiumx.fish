function codiumx -d "Backups and installs VSCodium extensions"
    switch $argv[1]
        case install i
            echo "Starting installation of extensions"
            echo ""
            while read -a line
                eval codium --install-extension $line
                echo ""
            end <$CODIUMX_FILE
            set -l num (count < $CODIUMX_FILE)
            echo "Finished installing $num extensions."
        case backup b
            eval codium --list-extensions >$CODIUMX_FILE
            set -l num (count < $CODIUMX_FILE)
            echo "Saved $num extensions."
        case silent-backup sb
            eval codium --list-extensions >$CODIUMX_FILE
        case list ls
            while read -a line
                echo "$line"
            end <$CODIUMX_FILE
            set -l num (count < $CODIUMX_FILE)
            echo "Total extensions: $num"
        case "" help h
            echo codiumx
            echo "Script to mass-install extensions or create a list of currently installed extensions on VSCodium."
            echo ""
            echo "Usage: codiumx [command]"
            echo ""
            echo Commands
            echo "      install i           : Install extensions from list"
            echo "      backup b            : Backup extensions to list"
            echo "      silent-backup sb    : Backup extensions to list, no message"
            echo "      list ls             : List installed extensions"
            echo "      help h              : Print this help message"
            echo ""
            echo Variables
            echo "       \$CODIUMX_FILE  Extension list path. Location: $CODIUMX_FILE" | string replace --regex -- $HOME \~
            echo ""
        case "*"
            echo "codiumx: Unknown command: \"$argv\"" >&2 && return 1
    end
end
