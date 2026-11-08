export BAT_THEME="Catppuccin Mocha"
export DIFFPROG=meld
export EDITOR="micro"
export MICRO_TRUECOLOR=1

# 󰮯  PACMAN
alias add="sudo pacman -S --needed --noconfirm"
alias clean="pacman -Qtdq | sudo pacman -Rns -"   
alias del="sudo pacman -Rns"
alias list="pacman -Qqe > $HOME/Documents/list"
alias search="pacman -Ss"
alias update="sudo pacman -Syu"

#   SYSTEM
alias ct="sudo rm -rf /var/cache/pacman/pkg/download-*"
alias mirrors="sudo reflector --country France,Germany --latest 5 --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist --verbose"
alias svl="systemctl list-unit-files --state=enabled"
alias zshrc="micro $HOME/.zshrc && source $HOME/.zshrc"

#   UTILS
alias c="clear"
alias cdt="cd $HOME/Téléchargements"
alias ff="fastfetch"
alias fm="yazi"
alias ls="eza --icons --group-directories-first"
alias rm="trash -v"
alias window="mmsg get all-clients | jq ."
alias wipe="cliphist wipe && rm -r $HOME/.cache/cliphist/db"

## History file for zsh
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

bindkey '^[[3~' delete-char
  
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh   

eval "$(starship init zsh)"
