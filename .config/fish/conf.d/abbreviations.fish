# pacman/yay
abbr -a -g paci 'yay -S'
abbr -a -g pacun 'yay -Rcs'
abbr -a -g pacu 'yay -Syu'
abbr -a -g pacup 'yay -Syyu'
abbr -a -g pacro 'yay -Rcs (yay -Qdtq)'
abbr -a -g pacs 'yay -Ss'
abbr -a -g pacsl 'yay -Qs'
abbr -a -g paccc 'yay -Sc'
abbr -a -g pacsi 'yay -Si'

# dotfiles repo at $HOME
abbr -a -g dadd 'dots add'
abbr -a -g ddif 'dots diff'
abbr -a -g dst 'dots status'
abbr -a -g dpom 'dots push origin main'
abbr -a -g dcom 'dots commit'

# pnpm
abbr -a -g pn pnpm
abbr -a -g pni 'pnpm i'
abbr -a -g pnun 'pnpm un'
abbr -a -g pnid 'pnpm i -D'
abbr -a -g pnig 'pnpm i -g'
abbr -a -g pnx 'pnpm -s dlx'

# npm
abbr -a -g npi 'npm i'
abbr -a -g npun 'npm un'
abbr -a -g npid 'npm i -D'
abbr -a -g npig 'npm i -g'

# protonvpn
abbr -a -g protin 'protonvpn-cli login'
abbr -a -g protc 'protonvpn-cli connect'
abbr -a -g protcf 'protonvpn-cli connect -f'
abbr -a -g protdc 'protonvpn-cli disconnect'
abbr -a -g protst 'protonvpn-cli status'

# asdf
abbr -a -g afpad 'asdf plugin add'
abbr -a -g afprm 'asdf plugin remove'
abbr -a -g afpls 'asdf plugin list'
abbr -a -g afpup 'asdf plugin update --all'
abbr -a -g afi 'asdf install'
abbr -a -g afun 'asdf uninstall'
abbr -a -g afls 'asdf list'
abbr -a -g aflsa 'asdf list all'
abbr -a -g afcurr 'asdf current'

# exa/ls
abbr -a -g ls 'exa --group-directories-first --icons'
abbr -a -g lsa 'exa --group-directories-first --icons --all'
abbr -a -g lsg 'exa --group-directories-first --icons --git'
abbr -a -g lst 'exa --group-directories-first --icons --tree'

# various
abbr -a -g cat bat
abbr -a -g man batman
abbr -a -g rm trash
abbr -a -g ssh 'kitty +kitten ssh'
