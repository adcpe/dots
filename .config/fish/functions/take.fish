function take -d='Make directory and cd into it.'
    command mkdir -p $argv
    cd $argv
end
