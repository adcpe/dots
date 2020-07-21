git clone --bare https://gitlab.com/andres-dc/dots.git $HOME/.dots-git

function dots {
  /usr/bin/git --git-dir=$HOME/.dots-git/ --work-tree=$HOME $@
}

mkdir -p .dots-backup
dots checkout

if [ $? = 0 ]; then
  echo "Checked out dots.";
  else
    echo "Backing up pre-existing dot files.";
    dots checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .dots-backup/{}
fi;

dots checkout
dots config status.showUntrackedFiles no
dots remote set-url origin git@gitlab.com:andres-dc/dots.git

