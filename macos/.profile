export PATH="/usr/local/opt/ruby/bin:$PATH"
export GPG_TTY=$(tty)
# eval $(docker-machine env)
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:/Users/awh4kc/.gem/ruby/2.6.0/bin:$PATH"
export PATH="/Users/awh4kc/Library/Python/3.7/bin:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
[ -f /usr/local/opt/dvm/dvm.sh ] && . /usr/local/opt/dvm/dvm.sh
[[ -r $DVM_DIR/bash_completion ]] && . $DVM_DIR/bash_completion
export DOCKER_VERSION=19.03.5
