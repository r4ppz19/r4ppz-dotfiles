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
export EDITOR="micro"
export VISUAL="micro"
export TERMINAL="kitty"

# Aliases
alias ls="eza --icons --group-directories-first --color=auto"
alias r="ranger"
alias rm="trash-put"
alias nano='micro'
alias gce='gh copilot explain'
alias gcs='gh copilot suggest'

# Keybindings
bindkey -e  # Use Emacs keybindings (default)
bindkey "^[[1;5D" backward-word  # Ctrl + Left = Move left by word
bindkey "^[[1;5C" forward-word   # Ctrl + Right = Move right by word