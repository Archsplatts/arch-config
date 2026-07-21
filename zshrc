export BAT_THEME="Catppuccin Mocha"
export EDITOR="micro"
export MICRO_TRUECOLOR=1

## Pacman
alias cleancache="sudo pacman -Sc"
alias cleanorphans="sudo pacman -Rs $(pacman -Qdtq)"
alias info="pacman -Si"
alias list="pacman -Qqe > ~/Info/exp-list && pacman -Qq > ~/Info/pkg-list"
alias orphans="pacman -Qdtq"
alias qi="pacman -Qi"
alias rns="sudo pacman -Rns"
alias search="pacman -Ss"
alias syu="sudo pacman -Syu; pkill -SIGRTMIN+1 waybar"
alias update="sudo pacman -Syyu && yay -Syua"

## Système
alias cache="dust .cache"
alias cleantemp="sudo rm -rf /var/cache/pacman/pkg/download-*"
alias conf="yazi .config"
alias error="journalctl -p 3 -xb"
alias mirrors="sudo reflector --country France,Germany --latest 5 --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist --verbose"
alias rm="trash -v"
alias zshrc="micro .zshrc && source ~/.zshrc"

## Utilitaires
alias c="clear"
alias cdt="cd ~/Téléchargements"
alias ff="fastfetch"
alias fm="yazi"
alias pfc="~/.scripts/papirus-folders -C"
alias pfl="~/.scripts/papirus-folders -l"
alias window="mmsg get all-clients"
alias wipe="cliphist wipe && rm -r ~/.cache/cliphist/db"

## History file for zsh
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

bindkey '^[[3~' delete-char
  
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh   

eval "$(starship init zsh)"
