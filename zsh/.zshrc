# Created by newuser for 5.8

source ~/.config/zsh/.zprofile
PATH=$PATH:$HOME/.scripts
export EDITOR='vim'
export TERMINAL='alacritty'
export BROWSER='firefox'
export PATH=~/.local/bin/:$PATH #PTSH
export TERM="xterm-256color"
#bindkey -v
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-Z}'
export PATH="$HOME/.emacs.d/bin:$PATH"

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.


# Alias
alias pac='sudo pacman -S'
alias v='vim'
# alias studio='/opt/android-studio/bin/studio.sh'
alias emacs="emacsclient -c -a 'emacs'"
# alias postman='/opt/Postman/Postman'
alias vim='nvim'
alias edit='code'

# Prompt

#declare -a PROMPTS
#PROMPTS=(
#	"§
#	"�"
#	"�"
#	"�"
#)
#RANDOM=$$$(date +%s)
#IGNITION=${PROMPTS[RANDOM % ${RANDOM[*]}]}
#PROMPT='%F{blue}%1~%f $ignition '
PROMPT='%F{blue}%1~%f § '

#autoload -Uz vcs_info
#precmd_vcs_info() { vcs_info }
#precmd_functions+=( precmd_vcs_info )
#setopt prompt_subst
#RPROMPT=\$vcs_info_msg_0_
#zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%r%f'
#zstyle ':vcs_info:*' enable git


# Load zsh-syntax-highlighting
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load zsh-autosuggestions
#source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Run StarShip prompt
eval "$(starship init zsh)"
