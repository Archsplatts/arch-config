export BAT_THEME="Catppuccin Mocha"
export DIFFPROG=meld
export EDITOR="micro"
export MICRO_TRUECOLOR=1

## 󰮯  Pacman
alias add="sudo pacman -S --noconfirm"
alias co="sudo pacman -Rs $(pacman -Qdtq)"
alias del="sudo pacman -Rns"
alias list="pacman -Qqe > $HOME/Documents/list"
alias orphans="pacman -Qdtq"
alias qi="pacman -Qi"
alias qm="pacman -Qm"
alias search="pacman -Ss"
alias si="pacman -Si"
alias update="yay -Syu; pkill -SIGRTMIN+1 waybar"

##   Système
alias ct="sudo rm -rf /var/cache/pacman/pkg/download-*"
alias error="journalctl -p 3 -xb"
alias mirrors="sudo reflector --country France,Germany --latest 5 --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist --verbose"
alias ml="bat /etc/pacman.d/mirrorlist"
alias mt="$HOME/.scripts/maintenance"
alias rm="trash -v"
alias sv="systemctl list-unit-files --state=enabled"
alias zshrc="micro $HOME/.zshrc && source $HOME/.zshrc"

##   Utilitaires
alias c="clear"
alias cdt="cd $HOME/Téléchargements"
alias ff="fastfetch"
alias fm="yazi"
alias ls="eza --icons -1 --group-directories-first"
alias window="mmsg get all-clients"
alias wipe="cliphist wipe && rm -r $HOME/.cache/cliphist/db"

## History file for zsh
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

bindkey '^[[3~' delete-char
  
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh   

eval "$(starship init zsh)"
