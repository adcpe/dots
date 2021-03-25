alias cra='npx create-react-app'
alias ssh="kitty +kitten ssh"

# dotfiles git repo
alias dots='git --git-dir=$HOME/.dots-git/ --work-tree=$HOME'
alias daa='dots add'
alias ddif='dots diff'
alias dst='dots status'
alias dpom='dots push origin main'
alias dcom='dots commit'

alias c='code'
alias cat='bat --theme base16'

alias ls='exa --group-directories-first'
alias la='ls -a'
alias ll='ls -l'

# pacman aliases
alias paci='sudo pacman -S'
alias pacun='sudo pacman -Rns'
alias pacu='sudo pacman -Syu'
alias pacup='sudo pacman -Syyu'
alias pacro='sudo pacman -Rns (pacman -Qdtq)'
alias pacs='pacman -Ss'
alias pacsl='pacman -Qs'
alias paccc='pacman -Sc'
alias paclo='pacman -Qdt'
alias pacinfo='pacman -Si'

# trash-cli https://github.com/sindresorhus/trash-cli
alias rm='trash'
