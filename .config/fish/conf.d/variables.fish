set -Ux fish_greeting

set -Ux sponge_purge_only_on_exit true

set -Ux VISUAL kate
set -Ux EDITOR nano
set -Ux XDG_CONFIG_HOME $HOME/.config

set -Ux QT_QPA_PLATFORMTHEME qt6ct
set -Ux QT_QPA_PLATFORM wayland

set -Ux ASDF_DIR $HOME/.config/asdf/.asdf
set -Ux ASDF_DATA_DIR $HOME/.config/asdf
set -Ux ASDF_CONFIG_FILE $HOME/.config/asdf/asdfrc
set -Ux ASDF_DEFAULT_TOOL_VERSIONS_FILENAME .config/asdf/tool-versions
set -Ux ASDF_NPM_DEFAULT_PACKAGES_FILE $HOME/.config/asdf/default-npm-packages
set -Ux ASDF_GEM_DEFAULT_PACKAGES_FILE $HOME/.config/asdf/default-gems
set -Ux ASDF_PYTHON_DEFAULT_PACKAGES_FILE $HOME/.config/asdf/default-python-packages

set -gx PNPM_HOME $HOME/.local/share/pnpm
set -gx GEM_HOME (gem env user_gemhome)
set -gx PATH $PNPM_HOME $GEM_HOME/bin $PATH $HOME/.local/bin

set -Ux GTK_USE_PORTAL 1

set -Ux VSCODEX_FILE $HOME/.config/Code/User/vscodex
