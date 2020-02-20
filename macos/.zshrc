source ~/.profile
export TERM="xterm-256color"
export ZSH="/Users/awh4kc/.oh-my-zsh"

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

autoload -Uz compinit
compinit

ZSH_THEME="powerlevel10k/powerlevel9k"
# ZSH_THEME="spaceship"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
plugins=(gitfast osx common-aliases docker tmux zsh-autosuggestions fzf navi virtualenv)

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs virtualenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="> "
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

source $ZSH/oh-my-zsh.sh

# My Stuff
alias ls='lsd'
alias la="lsd -laFh"
alias python-server="python3 -m http.server"
alias docker-start='docker-machine start default && eval $(docker-machine env)'
alias docker-stop='docker-machine stop default && eval $(docker-machine env -u)'
alias cl="clear"
alias ..="cd .."
alias ...="cd ../.."
alias g="git "
alias gs="git status"
alias ga="git add"
alias gaa="git add -A"
alias gc='git commit -S -m "'
alias gp="git push"
alias gpu="git pull"
alias gd="git diff"
alias tmux-start="tmux new -A -s main"
alias tmux-resume="tmux attach -t main"
alias tmux-stop="tmux detach -t main"
alias vpn-start="wg-quick up alderaan"
alias vpn-stop="wg-quick down alderaan"

export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH=$PATH:"$ZSH_CUSTOM/plugins/navi"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export ITERM_ENABLE_SHELL_INTEGRATION_WITH_TMUX=YES
source ~/.iterm2_shell_integration.zsh
export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
