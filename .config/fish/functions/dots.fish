function dots -d='Shortcut for git operations my dotfiles repository'
    git --git-dir=$HOME/.dots-git/ --work-tree=$HOME $argv
end
