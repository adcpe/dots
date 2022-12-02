#!/usr/bin/env fish
echo -e 'This operation will overwrite the current settings in $HOME directory.'
read -l -P 'Do you want to continue? [y/N] ' confirm

switch $confirm
    case Y y
        set -l dir $HOME/.dots-git/ # set dots git directory

        function conf
            /usr/bin/git --git-dir=$dir --work-tree=$HOME $argv
        end

        echo -e 'Cloning https://gitlab.com/adcpe/dots.git into .dots-git'

        rm -R -f $dir
        git clone --bare https://gitlab.com/adcpe/dots.git $dir

        echo -e 'Cloning https://gitlab.com/adcpe/dots.git into .dots-git'
        conf checkout -f # checkout overwriting existing files
        conf config status.showUntrackedFiles no # ignore untracked files
        conf remote set-url origin git@gitlab.com:adcpe/dots.git # use ssh for remote
        echo -e 'Operation finished!'
    case '*'
        echo -e 'Operation canceled.'
end
