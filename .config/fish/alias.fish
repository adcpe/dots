alias vim='nvim'
alias vi='nvim'
alias cra='npx create-react-app'

# dotfiles git repo
alias dots='/usr/bin/git --git-dir=$HOME/.dots-git/ --work-tree=$HOME'
alias daa='dots add'
alias ddif='dots diff'
alias dst='dots status'
alias dpom='dots push origin main'
alias dcom='dots commit'

alias c='code'
alias code='code'
alias cat='bat --theme base16'

alias ls='exa --group-directories-first'
alias la='ls -a'
alias ll='ls -l'

# pacman aliases
alias pacs='sudo pacman -Syu'
alias install='sudo pacman -Syu'
alias pacsyu='sudo pacman -Syu'
alias pacsyyu='sudo pacman -Syyu'
alias pacr='sudo pacman -R'
alias pacrns='sudo pacman -Rns'
alias remove='sudo pacman -Rns'
alias pacss='pacman -Ss'
alias pacqs='pacman -Qs'
alias pacsi='pacman -Si'
alias pacqi='pacman -Qi'
alias pacql='pacman -Ql'
alias pacsc='sudo pacman -Sc' # clear cache
alias pacscc='sudo pacman -Scc'
alias paco='sudo pacman -Rs (pacman -Qdtq)'

# trash-cli https://github.com/sindresorhus/trash-cli
alias rm='trash'
