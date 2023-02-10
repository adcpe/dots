function reswap -d 'Disable swap and re-enable it.'
    sudo swapoff -a && sudo swapon -a
    echo 'Finished!'
end
