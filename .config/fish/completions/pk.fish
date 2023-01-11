complete --command pk --exclusive --long help --description "Print help"
complete --command pk --exclusive --condition __fish_use_subcommand --arguments main --description "Main repos search"
complete --command pk --exclusive --condition __fish_use_subcommand --arguments aur --description "AUR search"
