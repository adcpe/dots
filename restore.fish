git clone --bare https://gitlab.com/andres-dc/dots.git $HOME/.dots-git

function conf
  /usr/bin/git --git-dir=$HOME/.dots-git/ --work-tree=$HOME $argv
end

conf checkout -f # checkout overwriting existing files
conf config status.showUntrackedFiles no # ignore untracked files
conf remote set-url origin git@gitlab.com:andres-dc/dots.git # use ssh for remote
