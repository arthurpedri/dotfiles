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
sudo dnf install git stow tldr
cd dotfiles
stow -t ~ nvim starship zsh kitty solaar git
sudo dnf install kitty zsh fzf zoxide bat eza neovim
sudo dnf copr enable atim/starship
sudo dnf install starship
sudo dnf copr enable dejan/lazygit
sudo dnf install lazygit
# Without OMZ
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.local/share/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.local/share/zsh-syntax-highlighting
# End
# With OMZ
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# End
```

## Optionals
### Tmux
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cd dotfiles
stow -t ~ tmux
tmux
<Ctrl + Space> + I
```

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
sudo systemctl enable --now earlyoom
```

### KDE

- Stretchly
  - Flatpak
- Krohnkite
  - KWin Scripts
  - 3px gaps
- Panel Colorizer
  - Widget
- Compact Pager
  - Widget
- Global Menu
  - Widget
- Window Rules
  - 92% opacity on all
  - Exception for browser, discord
-
