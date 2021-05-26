export ZSH="/home/david/.oh-my-zsh"
ZSH_THEME="xiong-chiamiov"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting 
)

fet.sh

source $ZSH/oh-my-zsh.sh

alias bw="wpg --backend wal -s ~/.config/wall.png"
alias update="trizen --noconfirm -Syuu --sudo-autorepeat-at-runtime"
alias lsblk="lsblk -f"
alias v="nvim"

test -r "~/scripts/.dir_colors" && eval $(dircolors ~/scripts/.dir_colors)

export SPICETIFY_INSTALL="/home/david/spicetify-cli"
export PATH="$SPICETIFY_INSTALL:$PATH"
export MOZ_DBUS_REMOTE=1
export MOZ_ENABLE_WAYLAND=1
export YAPF="/home/david/.local/bin"
export PATH="$YAPF:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
