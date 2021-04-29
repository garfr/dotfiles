#!/bin/bash
export FZF_DEFAULT_COMMAND="find -L | grep -vE '(build|.git|objs)'"
alias vim=nvim

if [ -z $DISPLAY ] && [ "$(tty)" == "/dev/tty1" ]; then
  exec startx
fi
#source ~/.bash_profile

export EDITOR=nvim
# opam configuration
test -r /home/beans/.opam/opam-init/init.sh && . /home/beans/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
