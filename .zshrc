#   ________  ________  ___  ___  ________  ________     
#  |\_____  \|\   ____\|\  \|\  \|\   __  \|\   ____\    
#   \|___/  /\ \  \___|\ \  \\\  \ \  \|\  \ \  \___|    
#       /  / /\ \_____  \ \   __  \ \   _  _\ \  \       
#  ___ /  /_/__\|____|\  \ \  \ \  \ \  \\  \\ \  \____  
# |\__\\________\____\_\  \ \__\ \__\ \__\\ _\\ \_______\
# \|__|\|_______|\_________\|__|\|__|\|__|\|__|\|_______|
#               \|_________|                             

#bloat funnies
pfetch

# Enable colors and change prompt:
#autoload -U colors && colors
#PS1=%{$fg[cyan]%}%n@%m%{$reset_color%}:%{$fg[blue]%}%~%{$reset_color%}$
autoload -U promptinit; promptinit
# optionally define some options
PURE_CMD_MAX_EXEC_TIME=10

# change the path color
zstyle :prompt:pure:path color white

# change the color for both `prompt:success` and `prompt:error`
zstyle ':prompt:pure:prompt:*' color cyan

# turn on git stash status
zstyle :prompt:pure:git:stash show yes
prompt pure

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

#syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
