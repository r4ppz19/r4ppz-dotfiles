# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Initialize Zinit
source ~/.zinit/bin/zinit.zsh

# Path Management
typeset -U path
path=(
  $HOME/.local/bin
  $HOME/.cargo/bin
  $HOME/.npm-global/bin
  ${path[@]}
)
export PATH

# Zinit Plugins (Use 'wait' for faster shell startup)
zinit light romkatv/powerlevel10k

zinit ice wait lucid
zinit light zsh-users/zsh-autosuggestions

zinit ice wait lucid
zinit light zsh-users/zsh-syntax-highlighting

zinit ice wait lucid
zinit light zsh-users/zsh-completions

zinit ice wait lucid
zinit light ajeetdsouza/zoxide

# zinit ice wait lucid
# zinit light Aloxaf/fzf-tab

zinit ice wait lucid
zinit light marlonrichert/zsh-autocomplete

# zinit ice wait lucid
# zinit light zsh-users/zsh-history-substring-search

zinit ice wait lucid
zinit light hlissner/zsh-autopair

# Load Powerlevel10k Config
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Defaults
export EDITOR="zed"
export VISUAL="zed"
export TERMINAL="kitty"

# Aliases
alias ls="eza --icons --group-directories-first --color=auto"
alias r="ranger"
alias rm="trash-put"

# Set environment variables for Wayland and Sway
export XDG_CURRENT_DESKTOP="sway"
export XDG_SESSION_TYPE="wayland"

# Sway Optimizations
export LIBVA_DRIVER_NAME="iHD"
export MOZ_ENABLE_WAYLAND=1
export WLR_RENDERER_ALLOW_THREADED=1
export SWT_AUTO_WAYLAND=1
export GDK_BACKEND="wayland"
export QT_QPA_PLATFORM="wayland"
# export WLR_NO_HARDWARE_CURSORS=1  # Uncomment if cursor disappears or glitches
# export WLR_DRM_NO_ATOMIC=1  # Uncomment if display flickers or has graphical glitches

# GPU Performance Tweaks
export GBM_BACKEND="nir"  # Better performance for Intel GPUs
export __GLX_VENDOR_LIBRARY_NAME="mesa"  # Ensures Mesa is used for OpenGL
export MESA_NO_ERROR=1  # Disables Mesa error checking (slightly faster)
export MESA_GL_VERSION_OVERRIDE="4.6"  # Forces OpenGL 4.6 (useful for older apps)
export MESA_GLSL_CACHE_DISABLE=0  # Enables GLSL shader caching
export MESA_SHADER_CACHE_DISABLE=0  # Enables GLSL shader caching
export MESA_SHADER_CACHE_DIR="$HOME/.cache/mesa"  # Custom shader cache directory

# Vulkan & Qt Settings
export WLR_RENDERER="vulkan"  # Use Vulkan renderer (better for some setups)
export QT_QPA_PLATFORMTHEME="gtk2"  # Makes Qt apps match GTK theme better
export XCURSOR_SIZE=24  # Cursor size (tweak to preference)

# Audio Optimizations
export PIPEWIRE_LATENCY="128/48000"  # Lowers audio latency for PipeWire
export WIREPLUMBER_CONFIG_DIR="$HOME/.config/wireplumber"  # Custom config directory
export PULSE_LATENCY_MSEC=32  # Helps with PulseAudio apps
export BLUEZ_AUTO_ENABLE=1  # Auto-enable Bluetooth if needed

# XDG and GTK Fixes
export XDG_SESSION_DESKTOP="Sway"  # Helps apps detect the desktop environment
export XDG_DATA_HOME="$HOME/.local/share"  # Ensures proper XDG directories
export GTK_USE_PORTAL=1  # Ensures native GTK file pickers work properly

# Electron & Firefox
export ELECTRON_OZONE_PLATFORM_HINT="wayland"  # Forces Electron apps to use Wayland
# export MOZ_DISABLE_RDD_SANDBOX=1  # Helps Firefox video decoding on Intel GPUs (optional)

# Borders
# export GTK_CSD=0
# export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
