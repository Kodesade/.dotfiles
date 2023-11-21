export EDITOR='/usr/bin/nvim'
export VISUAL="$EDITOR"
stty -echo
clear

setopt histignorealldups sharehistory
setopt prompt_subst

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e
bindkey '\e[H'  beginning-of-line
bindkey '\e[F'  end-of-line
bindkey '\e[3~' delete-char
bindkey -s '\e[2~' ''
# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

export PATH="$(realpath ~/.local/bin):$PATH"
export PATH="/usr/bin:$PATH"

NEO_ICON_PATH = "$HOME/Pictures/nazuna.png"
NEO_GRAPHIC_PROT= "--kitty"
neofetch "$NEO_GRAPHIC_PROT" "$NEO_ICON_PATH" --size 365px
unalias -a
. ~/.zshrc-extra

# PS1="%F{5}󰣇 %F{0}[%f%F{7}%*%f%F{0}]%f 󰥟%F{2} %~%f%F{0} %(!.󱢽 .)>>%f "
PS1="%* | %~ >> "

stty echo
