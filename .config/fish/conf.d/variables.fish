set -gx fish_greeting

set -gx VISUAL kate
set -gx EDITOR nvim
set -gx XDG_CONFIG_HOME $HOME/.config

set -gx ASDF_CONFIG_FILE $HOME/.config/asdf/asdfrc
set -gx ASDF_DEFAULT_TOOL_VERSIONS_FILENAME $HOME/.config/asdf/tool-versions
set -gx ASDF_DATA_DIR $HOME/.config/asdf
set -gx ASDF_NPM_DEFAULT_PACKAGES_FILE $HOME/.config/asdf/default-npm-packages
set -gx ASDF_GEM_DEFAULT_PACKAGES_FILE $HOME/.config/asdf/default-gems
set -gx ASDF_PYTHON_DEFAULT_PACKAGES_FILE $HOME/.config/asdf/default-python-packages

set -gx PNPM_HOME $HOME/.local/share/pnpm
set -gx PATH $PNPM_HOME $PATH

set -gx GTK_USE_PORTAL 1

set -gx CODEX_FILE $HOME/.config/Code/User/codex
