# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Color combination based on: https://en.wikipedia.org/wiki/ANSI_escape_code#8-bit
# greenish to green-blue:
export PS1="\[\e[48:5:191;30;1m\][\t]\[\e[0m\]\[\e[48:5:192;30;1m\]\h:\[\e[0m\]\[\e[48:5:194;30;1m\]\w\[\e[0m\]\[\e[48:5:195;30;1m\]$ \[\e[0m\]";
# purple to blue:
# export PS1="\[\e[48:5:183;30;1m\][\t]\[\e[0m\]\[\e[48:5:111;30;1m\]\h:\[\e[0m\]\[\e[48:5:39;30;1m\]\w\[\e[0m\]\[\e[48:5:33;30;1m\]$ \[\e[0m\]";

# help set
# ...
# -C  If set, disallow existing regular files to be overwritten
#           by redirection of output.
set -C
# help set
# ...
#      -H  Enable ! style history substitution.  This flag is on
#          by default when the shell is interactive.
# ...
# Using + rather than - causes these flags to be turned off.
set +H          


# Look at 'infocmp' for ansi escape character informations
printf "\e[40;32mBe liberal in what you accept, be conservative in what you do.\e[0m\\n"
printf "\e[40;33;3m    Only do what you have been tasked to do.\e[0m\\n"
printf "\e[40;36m    Try to aim only for fulfilling the MUST goals. Fulfill the SHOULD goals only if they happen to fall in your way.\e[0m\\n"
printf "        \e[44;30mWer schreibt, der bleibt.\e[0m\\n"
printf "\e[30;48;3;255;192;192mI'm perfectly happy to be schooled if someone more knowledgeable comes along!\e[0m\\n"
# NOPE: could not find that in the book... it's probably wrongly accounted to Dante
# printf "        \e[44;30m\"He listens to good purpose who takes note.\" ― Dante Alighieri, Inferno\e[0m\\n"


printf "cd /home/jitschin/git/dlr-hpc-portal/hpc_portal; source ../venv/bin/activate; python3 manage.py test --exclude-tag=external --exclude-tag=external_fail_fast projects.tests.ProjectOverviewTesting\\n"


export EDITOR=/usr/bin/vim


