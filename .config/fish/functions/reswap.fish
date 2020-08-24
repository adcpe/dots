function reswap -d 'Disable swap and re-enable it.'
    echo 'Disabling swap...'
    sudo swapoff -a && sudo swapon -a
    echo 'Finished!'
end
