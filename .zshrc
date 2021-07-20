# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/home/fahim/.local/bin:$PATH 

# Path to Gem executables
#export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME="archcraft"
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions archlinux)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# omz
alias zshconfig="gedit ~/.zshrc"
alias ohmyzsh="thunar ~/.oh-my-zsh"

# ls
alias l='ls -lh'
alias ll='ls -lah'
alias la='ls -A'
alias lm='ls -m'
alias lr='ls -R'
alias lg='ls -l --group-directories-first'

# git
alias gcl='git clone --depth 1'
alias gi='git init'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push origin master'

alias c="clear"
alias q="exit"
alias hd="hexdump -C"
alias default-apps="clear && ~/.scripts/default-apps/launch && ~/.scripts/default-apps/launch -e"

# pacman
alias pill="sudo powerpill -S"
alias up="sudo pacman -Sy && sudo powerpill -Su && yay"
alias in="yay -S"
alias search="yay -Ss"
alias yayupd="yay -Sy"
alias yayupg="yay -Syu"
alias out="yay -Rcns"
alias orphan="sudo pacman -Qdtq | sudo pacman -Rs -"

alias emergeins="$PRIV emerge -av"
alias emergepv="$PRIV emerge -pv"
alias emergeupd="$PRIV emaint -a sync"
alias emergeupg="$PRIV emerge -av --update --deep --changed-use @world"
alias emergedepc="$PRIV emerge --depclean -av"
alias emergenuse="$PRIV emerge -av --update --newuse --deep @world"
alias emergecuse="$PRIV emerge -av --update --changed-use --deep @world"
alias ecleandist="$PRIV eclean-dist --deep"
alias ecleankern="$PRIV eclean-kernel -n 3"
alias rc-service="$PRIV rc-service"
alias rc-update="$PRIV rc-update"
alias pingoogle="ping 8.8.8.8"
alias trimall="$PRIV fstrim -va"
alias nanosu="$PRIV nano"
alias nvimsu="$PRIV nvim"

# Power
alias off="systemctl poweroff -i"
alias boot="systemctl reboot -i"

# Term paste
alias paste="curl -F 'sprunge=<-' http://sprunge.us"
alias termbin="nc termbin.com 9999 <"

# YouTube-dl
alias ydl="youtube-dl -x --audio-format mp3 --prefer-ffmpeg"
alias yvid="youtube-dl --merge-output-format mp4"

# WGCF
alias won="wg-quick up wgcf-profile"
alias woff="wg-quick down wgcf-profile"
alias wforce="sudo rm -rf wgcf-profile.conf && wgcf generate && sudo rm -rf /etc/wireguard/wgcf-profile.conf && sudo cp wgcf-profile.conf /etc/wireguard"

# Energized
alias eng="sudo sh ~/Downloads/scripts/energized.sh"

# ytfzf
alias yt="ytfzf -s -t -f --preview-side=left"

# Anbox Container
alias anon="sudo systemctl start anbox-container-manager.service"
alias anoff="sudo systemctl stop anbox-container-manager.service"
autoload -Uz spm pm

# Systemd
alias sc="systemctl"
alias scs="systemctl start"
alias scst="systemctl stop"
alias scu="systemctl --user"
alias rank="sc restart rankmirror@{chaotic-,}mirrorlist.service"
