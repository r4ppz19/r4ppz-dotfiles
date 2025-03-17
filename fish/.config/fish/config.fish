# Add personal paths safely without overwriting system paths
fish_add_path -U --append $HOME/.local/bin

# SwayOptimazations
set -Ux XDG_SESSION_TYPE wayland
set -Ux WLR_NO_HARDWARE_CURSORS 1
set -Ux LIBVA_DRIVER_NAME iHD
set -Ux MOZ_ENABLE_WAYLAND 1
set -Ux WLR_DRM_NO_ATOMIC 1
set -Ux WLR_RENDERER_ALLOW_THREADED 1

# Initialize
zoxide init fish | source

# Default:
set -Ux EDITOR nvim
set -Ux VISUAL nvim
set -Ux TERMINAL kitty

# Cursor
# set -Ux XCURSOR_THEME Hackneyed-24px
# set -Ux XCURSOR_SIZE 24

# alias
alias ls="eza --icons --group-directories-first --color=auto"

# Environment Variable
# set -x QT_QPA_PLATFORMTHEME qt5ct

# Fuctions
if status is-interactive
    function fish_greeting
    end
end