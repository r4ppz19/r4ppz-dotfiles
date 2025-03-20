# Add personal paths safely without overwriting system paths
fish_add_path -U --append $HOME/.local/bin

# Set
set -Ux XDG_CURRENT_DESKTOP sway
set -Ux XDG_SESSION_TYPE wayland

# SwayOptimazations
set -Ux XDG_SESSION_TYPE wayland
set -Ux LIBVA_DRIVER_NAME iHD
set -Ux MOZ_ENABLE_WAYLAND 1
set -Ux WLR_RENDERER_ALLOW_THREADED 1
set -Ux SWT_AUTO_WAYLAND 1
set -Ux GDK_BACKEND wayland
set -Ux QT_QPA_PLATFORM wayland
# set -Ux WLR_NO_HARDWARE_CURSORS 1  # Only if cursor disappears or glitches
# set -Ux WLR_DRM_NO_ATOMIC 1  # Only if display flickers or has graphical glitches

set -Ux GBM_BACKEND nir                        # Better performance for Intel GPUs  
set -Ux __GLX_VENDOR_LIBRARY_NAME mesa         # Ensures Mesa is used for OpenGL  
set -Ux MESA_NO_ERROR 1                        # Disables Mesa error checking (slightly faster)  
set -Ux MESA_GL_VERSION_OVERRIDE 4.6           # Forces OpenGL 4.6 (useful for older apps)  
set -Ux MESA_GLSL_CACHE_DISABLE 0              # Enables GLSL shader caching  
set -Ux MESA_SHADER_CACHE_DIR "$HOME/.cache/mesa"  # Custom shader cache directory  

set -Ux WLR_RENDERER vulkan                     # Use Vulkan renderer (better for some setups)  
set -Ux QT_QPA_PLATFORMTHEME gtk2               # Makes Qt apps match GTK theme better  
set -Ux XCURSOR_SIZE 24                         # Cursor size (tweak to preference)  

set -Ux PIPEWIRE_LATENCY "128/48000"           # Lowers audio latency for PipeWire  
set -Ux WIREPLUMBER_CONFIG_DIR "$HOME/.config/wireplumber"  # Custom config directory  
set -Ux PULSE_LATENCY_MSEC 32                   # Helps with PulseAudio apps  
set -Ux BLUEZ_AUTO_ENABLE 1                     # Auto-enable Bluetooth if needed  

set -Ux XDG_CURRENT_DESKTOP Sway                # Helps apps detect the desktop environment  
set -Ux XDG_SESSION_DESKTOP Sway                # Same as above  
set -Ux XDG_DATA_HOME "$HOME/.local/share"      # Ensures proper XDG directories  
set -Ux GTK_USE_PORTAL 1                        # Ensures native GTK file pickers work properly  

# set -Ux MOZ_DISABLE_RDD_SANDBOX 1               # Helps Firefox video decoding on Intel GPUs  
set -Ux ELECTRON_OZONE_PLATFORM_HINT wayland    # Forces Electron apps to use Wayland  



# Initialize
zoxide init fish | source

# Default:
set -Ux EDITOR code
set -Ux VISUAL code
set -Ux TERMINAL kitty

# Cursor
# set -Ux XCURSOR_THEME Hackneyed-24px
# set -Ux XCURSOR_SIZE 24

# alias
alias ls="eza --icons --group-directories-first --color=auto"
alias r='ranger'

# Environment Variable
# set -x QT_QPA_PLATFORMTHEME qt5ct

# Fuctions
if status is-interactive
    function fish_greeting
    end
end