#!/usr/bin/env fish
echo -e 'This operation will overwrite the current settings in the $HOME directory.'
read -l -P 'Do you want to continue? [y/N] ' confirm

switch $confirm
    case Y y
        set -l dir $HOME/.config/dots/git/ # set dots git directory
        rm -R -f $dir

        echo -e 'Cloning https://gitlab.com/adcpe/dots.git into $HOME/.config/dots/git/'

        git clone --bare https://gitlab.com/adcpe/dots.git $dir

        /usr/bin/git --git-dir=$dir --work-tree=$HOME checkout -f # checkout overwriting existing files
        /usr/bin/git --git-dir=$dir --work-tree=$HOME config status.showUntrackedFiles no # ignore untracked files
        /usr/bin/git --git-dir=$dir --work-tree=$HOME config --local core.hooksPath $HOME/.config/dots/hooks/ # set hooks dir
        /usr/bin/git --git-dir=$dir --work-tree=$HOME remote set-url origin git@gitlab.com:adcpe/dots.git # use ssh for remote
        echo -e 'Operation finished!'
    case '*'
        echo -e 'Operation canceled.'
end
