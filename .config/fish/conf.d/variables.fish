set -gx fish_greeting

set -gx VISUAL kate
set -gx EDITOR nano
set -gx XDG_CONFIG_HOME $HOME/.config

set -gx ASDF_CONFIG_FILE $HOME/.config/asdf/asdfrc
set -gx ASDF_DEFAULT_TOOL_VERSIONS_FILENAME $HOME/.config/asdf/tool-versions
set -gx ASDF_DATA_DIR $HOME/.config/asdf
set -gx ASDF_NPM_DEFAULT_PACKAGES_FILE $HOME/.config/asdf/default-npm-packages
set -gx ASDF_GEM_DEFAULT_PACKAGES_FILE $HOME/.config/asdf/default-gems
set -gx ASDF_PYTHON_DEFAULT_PACKAGES_FILE $HOME/.config/asdf/default-python-packages

set -gx GIT_AUTHOR_IDENT 'Andrés Del Carpio <adc@adc.pe>'
set -gx GIT_COMMITTER_IDENT 'Andrés Del Carpio <adc@adc.pe>'
set -gx GIT_DEFAULT_BRANCH main
set -gx GIT_EDITOR nano

set -gx PNPM_HOME $HOME/.local/share/pnpm
set -gx PATH $PNPM_HOME $PATH

set -gx GTK_USE_PORTAL 1

set -gx codex_path $HOME/.config/Code/User/extensions
