function codex -d "Backups and installs VSCode extensions"
    switch $argv[1]
        case install
            echo "Starting installation of extensions"
            echo ""
            while read -a line
                eval code --install-extension $line
                echo ""
            end <$CODEX_FILE
            set -l num (count < $CODEX_FILE)
            echo "Finished installing $num extensions."
        case backup
            eval code --list-extensions >$CODEX_FILE
            set -l num (count < $CODEX_FILE)
            echo "Saved $num extensions."
        case silent-backup
            eval code --list-extensions >$CODEX_FILE
        case list
            while read -a line
                echo "$line"
            end <$CODEX_FILE
        case "" help
            echo "Usage: codex install         Install extensions from list"
            echo "       codex backup          Backup extensions to list"
            echo "       codex silent-backup   Backup extensions to list, no message"
            echo "       codex list            List installed extensions"
            echo "       codex help            Print this help message"
            echo "Variables:"
            echo "       \$CODEX_FILE  Extension list path. Location: $CODEX_FILE" | string replace --regex -- $HOME \~
        case "*"
            echo "codex: Unknown command: \"$argv\"" >&2 && return 1
    end
end
