set -gx VISUAL kate
set -gx EDITOR nano
set -gx XDG_CONFIG_HOME $HOME/.config

set -gx ASDF_NPM_DEFAULT_PACKAGES_FILE $HOME/.config/asdf/.default-npm-packages
set -gx ASDF_GEM_DEFAULT_PACKAGES_FILE $HOME/.config/asdf/.default-gems
set -gx ASDF_PYTHON_DEFAULT_PACKAGES_FILE $HOME/.config/asdf/.default-python-packages

set -gx GIT_AUTHOR_IDENT 'Andrés Del Carpio <adc@adc.pe>'
set -gx GIT_COMMITTER_IDENT 'Andrés Del Carpio <adc@adc.pe>'
set -gx GIT_DEFAULT_BRANCH main
set -gx GIT_EDITOR nano

set -gx PNPM_HOME $HOME/.local/share/pnpm
set -gx PATH $PNPM_HOME $PATH
