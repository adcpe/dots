function codex -a cmd -d 'Backups and installs VSCodium extensions'
    switch $cmd[1]
        case install
            echo 'Starting installation of extensions'
            echo ''
            while read -a line
                eval codium --install-extension $line
                echo ''
            end <$codex_path
            set -l num (count < $codex_path)
            echo "Finished installing $num extensions."
        case backup
            eval codium --list-extensions >$codex_path
            set -l num (count < $codex_path)
            echo "Saved $num extensions."
        case '' help
            echo "Usage: codex install         Install extensions from list"
            echo "       codex backup          Backup extensions to list"
            echo "       codex help            Print this help message"
            echo "Variables:"
            echo "       \$codex_path  Extension list path. Location: $codex_path" | string replace --regex -- $HOME \~
        case '*'
            echo "codex: Unknown command: \"$cmd\"" >&2 && return 1
    end
end
