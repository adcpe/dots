git clone --bare https://gitlab.com/andres-dc/dots/-/raw/master/restore.sh $HOME/.dots-git

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
dots remote set-url origin git@github.com:andres-dc/dots.git

# configure oh my zsh and plugins
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-history-substring-search ~/.oh-my-zsh/plugins/zsh-history-substring-search
