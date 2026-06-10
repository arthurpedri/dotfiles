# Not using linuxbrew in fedora
# # linuxbrew
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export EDITOR="nvim"
export VISUAL="nvim"

# Functions
# Write functions here
workon(){
    source "$1"/bin/activate
}

# Makes directory and cd's into it
mc(){
    mkdir -p "$1" && cd "$1"
}

# Aliases sourced from different file
source ~/.config/zsh/.aliaszshrc

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# .local/bin Path
export PATH=$PATH:$HOME/.local/bin
# # Dotnet Path
# export DOTNET_ROOT=$HOME/.dotnet
# export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools

## Go Path
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin


eval "$(zoxide init --cmd j zsh)"

# FZF (Should come before completion and highlighting)
# export FZF_CTRL_T_COMMAND='fd --type f --hidden --follow'
export FZF_CTRL_T_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS=" \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:#45475a \
--border \
--height 70%"
export FZF_CTRL_T_OPTS=" \
--multi \
--preview 'bat --style=numbers --color=always --line-range :500 {}'"
export FZF_CTRL_R_OPTS=" \
--preview 'printf \"%s\n\" {} | cut -f2- | bat --language=bash --style=plain --color=always' \
--preview-window=down:3:wrap"
source <(fzf --zsh)


# # Enable transient prompt
# setopt transient_rprompt
#
# # Hook to clear the last prompt
# precmd() {
#   print -Pn "\e[1A\e[0J"
# }

# ZSH Plugins and completion
# History
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY

# Completion
autoload -Uz compinit
compinit

# Menu-style completion
zstyle ':completion:*' menu select

# Case-insensitive matching
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Complete hidden files/dirs
_comp_options+=(globdots)

# Better path completion
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' squeeze-slashes true

# Try completion from history too
zstyle ':completion:*' completer _complete _match _approximate _history

# Autosuggestions
source ~/.local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax highlighting: must be near the end
source ~/.local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Starship
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"


# if [[ -z "$TMUX" ]]; then
#   tmux a || tmux
# fi
