export TERM="xterm-256color"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/awh4kc/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel9k"
# ZSH_THEME="ys"
# ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(gitfast archlinux common-aliases)

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="> "
POWERLEVEL9K_MODE='awesome-fontconfig'

# source ~/.purepower

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# My Stuff

alias server="ssh server"
alias javacompile="javac -cp .:/usr/share/java/hamcrest-core.jar:/usr/share/java/junit-4.12.jar "
alias javarun="java -cp .:/usr/share/java/hamcrest-core.jar:/usr/share/java/junit-4.12.jar org.junit.runner.JUnitCore "
alias junit="java org.junit.runner.JUnitCore "
alias knit="zsh /home/awh4kc/plad4500/knitr.sh"
alias settings="tilix --preferences"
alias algoslack="slack-term -config .slack-term_algo"
alias isaslack="slack-term -config .slack-term_isa"
alias sound="sudo alsactl restore"
alias e="emacs -nw"
alias aws="ssh -i \"~/Desktop/awskey.pem\" ubuntu@ec2-3-80-149-175.compute-1.amazonaws.com"
alias spacemacs="docker run -ti --rm -v $('pwd'):/mnt/workspace \
 -v /etc/localtime:/etc/localtime:ro \
 -v ~/.ssh/id_rsa:${UHOME}/.ssh/id_rsa:ro \
 -v ~/.gnupg:${UHOME}/.gnupg \
 -v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket \
 -v /tmp/.X11-unix:/tmp/.X11-unix \
 -v /etc/machine-id:/etc/machine-id:ro \
 -e DISPLAY=$DISPLAY \
 -e TZ=UA \
 --name spacemacs jare/spacemacs"
alias vimd='docker run -ti --rm -v $(pwd):/home/developer/workspace jare/vim-bundle'
alias ls='lsd'
alias la="lsd -laFh"
alias capstoesc="xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'"
alias capstocaps="xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'"
alias dev="docker run -d --rm \
  -v /tmp/.X11-unix/:/tmp/.X11-unix \
  -v $HOME:/home/user \
  -e DISPLAY=unix$DISPLAY \
  --device /dev/dri \
  --name vscode \
  awh4kc/vscode"
alias code-cloud="docker start code-cloud"


alias ..="cd .."
alias ...="cd ../.."
alias g="git "
alias gs="git status"
alias ga="git add "
alias gc='git commit -m "'
alias gp="git push"
alias gpu="git pull"

function pretty_csv {
    perl -pe 's/((?<=,)|(?<=^)),/ ,/g;' "$@" | column -t -s, | less  -F -S -X -K
}

eval $(thefuck --alias fuck)

export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
export CLASSPATH=.:/usr/share/java/junit-4.12.jar:/usr/share/java/hamcrest-core.jar

autoload -Uz compinit
compinit
# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

