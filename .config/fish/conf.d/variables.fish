set -Ux fish_greeting

set -Ux sponge_purge_only_on_exit true

set -Ux VISUAL kate
set -Ux EDITOR nvim
set -Ux XDG_CONFIG_HOME $HOME/.config

set -Ux ASDF_DIR $HOME/.config/asdf/.asdf
set -Ux ASDF_DATA_DIR $HOME/.config/asdf
set -Ux ASDF_CONFIG_FILE $HOME/.config/asdf/asdfrc
set -Ux ASDF_DEFAULT_TOOL_VERSIONS_FILENAME .config/asdf/tool-versions
set -Ux ASDF_NPM_DEFAULT_PACKAGES_FILE $HOME/.config/asdf/default-npm-packages
set -Ux ASDF_GEM_DEFAULT_PACKAGES_FILE $HOME/.config/asdf/default-gems
set -Ux ASDF_PYTHON_DEFAULT_PACKAGES_FILE $HOME/.config/asdf/default-python-packages

set -gx PNPM_HOME $HOME/.local/share/pnpm
set -gx PATH $PNPM_HOME $PATH

# set -gx GEM_HOME (ruby -e 'puts Gem.user_dir')
# set -gx PATH $GEM_HOME/bin $PATH

set -Ux GTK_USE_PORTAL 1

set -Ux CODEX_FILE $HOME/.config/Code/User/codex
