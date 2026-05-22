# dotfiles

## Requisites

1. Git ssh key added
2. JetBrainsMono Nerd Font installed

## Steps for future automation

### Mint

```bash
sudo apt install stow tldr vlc
mkdir ~/repos
cd ~/repos
git clone git@github.com:arthurpedri/dotfiles.git
cd dotfiles
stow -t ~ nvim ohmyposh starship tmux zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sudo apt-get install build-essential
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install starship bat fzf zoxide neovim eza
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### Fedora

```bash

```

## Optionals

### Dotnet

```bash
wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh
chmod +x ./dotnet-install.sh
./dotnet-install.sh --version latest
# Path
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools
```

### EarlyOOM (Because kernel oom-killer is bad)

```bash
sudo apt install earlyoom
sudo systemctl enable --now earlyoom
```
