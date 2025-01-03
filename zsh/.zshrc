# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


export EDITOR="nvim"
export VISUAL="nvim"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# Functions
# Write functions here
workon(){
    source ~/.venvs/"$1"/bin/activate
} 

# Aliases sourced from different file
source ~/.aliaszshrc

# Node Version Manager
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

PATH=$PATH:$HOME/go/bin:~/.console-ninja/.bin


eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(starship init zsh)"
eval "$(zoxide init --cmd j zsh)"

source <(fzf --zsh)
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
