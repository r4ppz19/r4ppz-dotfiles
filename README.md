# r4ppz Dotfiles

**EndeavourOS + SwayFX**  

This repository contains my personal configuration files (**dotfiles**).  
- **Managed with [GNU Stow](https://www.gnu.org/software/stow/)** for easy symlink management.  

## System Setup  
| Component        | Configuration                 |
|-----------------|-----------------------------|
| **OS**          | EndeavourOS Linux            |
| **WM**          | SwayFX                        |
| **Bar**         | Waybar                        |
| **Launcher**    | Rofi                          |
| **Compositor**  | SwayFX (Built-in)            |
| **Terminal**    | Kitty                         |
| **Code Editor** | VS Code                       |
| **Lockscreen**  | Swaylock                      |
| **File Manager**| Nemo, Ranger                  |
| **Fonts**       | JetBrainsMono Nerd Font       |

## Sources/Based on
- **GTK Theme & Icons:** [Gruvbox-GTK-Theme](https://github.com/Fausto-Korpsvart/Gruvbox-GTK-Theme.git)  
- **Rofi Theme:** [adi1090x's Rofi Config](https://github.com/adi1090x/rofi.git)  
- **Waybar Config:** [bibjaw99's Workstation](https://github.com/bibjaw99/workstation.git)  

## Installation  
Clone the repository and use **Stow** to apply configurations:  
```sh
git clone https://github.com/r4ppz/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow <folder you want>
```