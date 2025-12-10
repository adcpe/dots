# pacman/yay
abbr paci 'yay -S'
abbr pacun 'yay -Rns'
abbr pacup 'yay -Syu'
abbr pacro 'yay -Rcs (yay -Qdtq)'
abbr pacs 'yay -Ss'
abbr pacsl 'yay -Qs'
abbr paccc 'yay -Sc'
abbr pacinfo 'yay -Si'
abbr pacq 'yay -Q'
abbr pacqs 'yay -Qs'
abbr paccount 'yay -Q | wc -l'

# git
abbr g git
abbr gs 'git status -sb'
abbr gst 'git status'
abbr ga 'git add'
abbr gaa 'git add --all'
abbr gap 'git add --patch'
abbr gai 'git add --interactive'
abbr gcom 'git commit'
abbr gca 'git commit --amend -v -S'
abbr gco 'git checkout'
abbr gcob 'git checkout -b'
abbr gp 'git push'
abbr gpf 'git push --force-with-lease'
abbr gpl 'git pull'
abbr gcl 'git clone'
abbr gf 'git fetch'
abbr gfa 'git fetch --all'
abbr gr 'git remote'
abbr grb 'git rebase'
abbr grbc 'git rebase --continue'
abbr gb 'git branch'
abbr gd 'git diff'
abbr gl 'git ll'

# dotfiles bare repo at $HOME
abbr da 'dots add'
abbr dai 'dots add --interactive'
abbr ddf 'dots diff'
abbr ds 'dots status -sb'
abbr dst 'dots status'
abbr dpom 'dots push origin main'
abbr dcom 'dots commit'

# kitty
abbr kdif 'kitty +kitten diff'
abbr kicat 'kitty +kitten icat'
abbr kfonts 'kitty +list-fonts'
abbr kssh 'kitty +kitten ssh'
abbr kthemes 'kitty +kitten themes'

# pnpm
abbr pn pnpm
abbr pni 'pnpm i'
abbr pnun 'pnpm un'
abbr pnid 'pnpm i -D'
abbr pnig 'pnpm i -g'
abbr pnx 'pnpm -s dlx'

# npm
abbr npi 'npm i'
abbr npun 'npm un'
abbr npid 'npm i -D'
abbr npig 'npm i -g'

# vpn
abbr vpnin 'protonvpn-cli login'
abbr vpnc 'protonvpn-cli connect'
abbr vpncf 'protonvpn-cli connect --fastest'
abbr vpndc 'protonvpn-cli disconnect'
abbr vpnst 'protonvpn-cli status'

# asdf
abbr afpa 'asdf plugin add'
abbr afprm 'asdf plugin remove'
abbr afpls 'asdf plugin list'
abbr afpup 'asdf plugin update --all'
abbr afi 'asdf install'
abbr afun 'asdf uninstall'
abbr afls 'asdf list'
abbr aflsa 'asdf list all'
abbr afcurr 'asdf current'

# exa
abbr els 'exa --group-directories-first --icons'
abbr ela 'exa --group-directories-first --icons --all --long'
abbr ell 'exa --group-directories-first --icons --long --header --git'
abbr ella 'exa --group-directories-first --icons --long --all --header --git'
abbr elt 'exa --group-directories-first --icons --tree'

# colorls
abbr cls 'colorls --group-directories-first '
abbr cla 'colorls --group-directories-first --all --long'
abbr cll 'colorls --group-directories-first --long --git-status'
abbr clla 'colorls --group-directories-first --long --all --git-status'

# various
abbr c code
abbr cat bat
abbr man batman
abbr nv nvim
abbr rm trash
abbr v vim
