function dots -w git -d='Shortcut for git operations on my dotfiles repository'
    if test (command pwd) = ~
        git --git-dir=$HOME/.config/dots/git --work-tree=$HOME $argv
    else
        echo -e "You can't do that here."
    end
end
