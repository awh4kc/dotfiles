export TERM="xterm-256color"
export ZSH="/home/awh4kc/.oh-my-zsh"

autoload -Uz compinit
compinit

ZSH_THEME="powerlevel10k/powerlevel9k"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
plugins=(gitfast archlinux common-aliases docker)

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="> "
POWERLEVEL9K_MODE='awesome-fontconfig'
# source ~/.purepower
source $ZSH/oh-my-zsh.sh
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
alias aws="ssh -i \"~/Desktop/awskey.pem\" ubuntu@ec2-3-80-149-175.compute-1.amazonaws.com"
alias gcpssh="ssh awk4kc@35.188.229.24"
alias gcp="gcloud compute ssh awh4kc@gcp"
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
alias dev=" docker rm vscode || true ; \
  docker run -d --rm \
  -v /tmp/.X11-unix/:/tmp/.X11-unix \
  -v $HOME:/home/user \
  -e DISPLAY=unix$DISPLAY \
  --device /dev/dri \
  --name vscode \
  awh4kc/vscode:node"
alias code-cloud="docker start code-cloud"
alias code-container="code --enable-proposed-api ms-vscode-remote.remote-containers"
alias lazydocker="~/Downloads/lazydocker"
alias docui="docker run --rm -itv /var/run/docker.sock:/var/run/docker.sock skanehira/docui"
alias emacsstart="emacs --daemon"
alias e="emacsclient -t"
alias em="emacsclient -nc"

alias cl="clear"
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

# Completion for kitty
kitty + complete setup zsh | source /dev/stdin
source <(kubectl completion zsh)

