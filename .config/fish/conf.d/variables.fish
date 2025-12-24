set -Ux fish_greeting

set -Ux sponge_purge_only_on_exit true

set -Ux VISUAL code
set -Ux EDITOR nano
set -Ux XDG_CONFIG_HOME $HOME/.config

set -Ux GTK_USE_PORTAL 1
set -Ux QT_SCALE_FACTOR 1
set -Ux MOZ_ENABLE_WAYLAND 1
set -Ux QT_QPA_PLATFORM wayland
set -Ux QT_QPA_PLATFORMTHEME gtk3
# set -Ux QT_QPA_PLATFORMTHEME qt6ct
set -Ux QT_QPA_PLATFORMTHEME_QT6 qt6ct
set -Ux ELECTRON_OZONE_PLATFORM_HINT auto

set -Ux ASDF_DIR $HOME/.config/asdf/.asdf
set -Ux ASDF_DATA_DIR $HOME/.config/asdf
set -Ux ASDF_CONFIG_FILE $HOME/.config/asdf/asdfrc
set -Ux ASDF_DEFAULT_TOOL_VERSIONS_FILENAME .config/asdf/tool-versions
set -Ux ASDF_NPM_DEFAULT_PACKAGES_FILE $HOME/.config/asdf/default-npm-packages
set -Ux ASDF_GEM_DEFAULT_PACKAGES_FILE $HOME/.config/asdf/default-gems
set -Ux ASDF_PYTHON_DEFAULT_PACKAGES_FILE $HOME/.config/asdf/default-python-packages

set -gx PNPM_HOME $HOME/.local/share/pnpm
set -gx PATH $PNPM_HOME $PATH $HOME/.local/bin

if type -q gem
    set -gx GEM_HOME (gem env user_gemhome)
    set -gx PATH $GEM_HOME/bin $PATH
end

set -Ux VSCODEX_FILE $HOME/.config/Code/User/vscodex
set -Ux CODIUMX_FILE $HOME/.config/VSCodium/User/codiumx
