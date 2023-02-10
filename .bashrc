# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PNPM_HOME="/home/adc/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

eval "$(starship init bash)"

. "$HOME/.config/asdf/.asdf/asdf.sh"
. "$HOME/.config/asdf/.asdf/completions/asdf.bash"
