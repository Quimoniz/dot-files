# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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

####################################################
#####          ~/.zshrc.pre-oh-my-zsh          #####
####################################################
# Set up the prompt

#autoload -Uz promptinit
#promptinit
#prompt adam1
#
#setopt histignorealldups sharehistory
#
## Use emacs keybindings even if our EDITOR is set to vi
#bindkey -e

## for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
##HISTFILESIZE=20000
## Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
SAVEHIST=10000
HISTFILE=~/.zsh_history

## Use modern completion system
#autoload -Uz compinit
#compinit
#
#zstyle ':completion:*' auto-description 'specify: %d'
#zstyle ':completion:*' completer _expand _complete _correct _approximate
#zstyle ':completion:*' format 'Completing %d'
#zstyle ':completion:*' group-name ''
#zstyle ':completion:*' menu select=2
#eval "$(dircolors -b)"
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
#zstyle ':completion:*' list-colors ''
#zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
#zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
#zstyle ':completion:*' menu select=long
#zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
#zstyle ':completion:*' use-compctl false
#zstyle ':completion:*' verbose true
#
#zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
#zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
## ~/.bashrc: executed by bash(1) for non-login shells.
## see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
## for examples
#
## If not running interactively, don't do anything
#case $- in
#    *i*) ;;
#      *) return;;
#esac
#
## make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
#
## set variable identifying the chroot you work in (used in the prompt below)
#if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
#    debian_chroot=$(cat /etc/debian_chroot)
#fi
#
## set a fancy prompt (non-color, unless we know we "want" color)
#case "$TERM" in
#    xterm-color|*-256color) color_prompt=yes;;
#esac
#
## uncomment for a colored prompt, if the terminal has the capability; turned
## off by default to not distract the user: the focus in a terminal window
## should be on the output of commands, not on the prompt
##force_color_prompt=yes
#
#if [ -n "$force_color_prompt" ]; then
#    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
#	# We have color support; assume it's compliant with Ecma-48
#	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
#	# a case would tend to support setf rather than setaf.)
#	color_prompt=yes
#    else
#	color_prompt=
#    fi
#fi
#
#if [ "$color_prompt" = yes ]; then
#    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#else
#    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
#fi
#unset color_prompt force_color_prompt
#
## If this is an xterm set the title to user@host:dir
#case "$TERM" in
#xterm*|rxvt*)
#    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
#    ;;
#*)
#    ;;
#esac
#
## colored GCC warnings and errors
##export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
#
## Alias definitions.
## You may want to put all your additions into a separate file like
## ~/.bash_aliases, instead of adding them here directly.
## See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

##BASHRC
##export PS1="\[\e[48:5:191;30;1m\][\t]\[\e[0m\]\[\e[48:5:192;30;1m\]\h:\[\e[0m\]\[\e[48:5:194;30;1m\]\w\[\e[0m\]\[\e[48:5:195;30;1m\]$ \[\e[0m\]";
### help set
### ...
### -C  If set, disallow existing regular files to be overwritten
###           by redirection of output.
##set -C
### help set
### ...
###      -H  Enable ! style history substitution.  This flag is on
###          by default when the shell is interactive.
### ...
### Using + rather than - causes these flags to be turned off.
##set +H          

## git clone https://gitlab.com/phoneybadger/pokemon-colorscripts.git
##  cd pokemon-colorscripts
## sudo ./install.sh

POKE_DB_REPOSITORY="$HOME/code/pokemon-colorscripts"
SUMMED_UP_DATE=$(($(date +%s) / 86400)) # arbitrary number which stays the same for the whole calendar day
RANDOM_POKE=$((${SUMMED_UP_DATE} % 150)) # The first edition has 150 pokemons here
RANDOM_FIRST_EDITION_POKEMON="$(jq ".[${RANDOM_POKE}].name" ${POKE_DB_REPOSITORY}/pokemon.json)" # Query the name in the JSON with the tool 'jq'
RANDOM_FIRST_EDITION_POKEMON="${RANDOM_FIRST_EDITION_POKEMON:1:-1}"  # Strip Double Quotes
pokemon-colorscripts --no-title --name "${RANDOM_FIRST_EDITION_POKEMON}"
# https://de.wikipedia.org/wiki/Liste_der_Pok%C3%A9mon
# var allBuf = new Array(); for(var curPoke of temp0.querySelectorAll("tr")) {var curNames = new Object(); var langs=[undefined, undefined, undefined, "german", undefined, "english", undefined, "french", undefined, "katakana", undefined, "katakana-transcription"]; for(curIndex of [3, 5, 7, 9, 11]) { var curEle = curPoke.childNodes[curIndex].childNodes[0]; if(curEle.tagName && curEle.tagName.length > 0) {curNames[langs[curIndex]] = curEle.title;} else {curNames[langs[curIndex]] = curEle.data;} } allBuf.push(curNames)} prompt("Pokemon-Namen, JSON:", JSON.stringify(allBuf));
POKEMON_GERMAN_NAME="$(jq '.['${RANDOM_POKE}'].german' $HOME/pokemon-list.json)"
POKEMON_GERMAN_NAME="${POKEMON_GERMAN_NAME:1:-1}"
POKEMON_TEXT="${POKEMON_GERMAN_NAME} (${RANDOM_FIRST_EDITION_POKEMON})"
printf "%4s #%3d \e[37;40m\e[5m%s\e[0m%$((60 - ${#POKEMON_TEXT}))s\\n" "" "${RANDOM_POKE}" "${POKEMON_TEXT}" ""; 
#
# Look at 'infocmp' for ansi escape character informations

# New in Unicode as of 2020:
#    https://en.wikipedia.org/wiki/Box-drawing_character
printf "\e[36m🮠▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔🮡\e[0m\\n"
printf "\e[36m▏   \e[40;32mBe liberal in what you accept, be conservative in what you do.\e[0m            \e[36m▕\e[0m\\n"
printf "\e[36m▏       \e[40;33;3mOnly do what you have been tasked to do.\e[0m                              \e[36m▕\e[0m\\n"
printf "\e[36m▏       \e[40;36mTry to aim only for fulfilling the MUST goals.\e[0m                        \e[36m▕\e[0m\\n"
printf "\e[36m▏         \e[40;36mFulfill the SHOULD goals only if they happen to fall in your way.\e[0m   \e[36m▕\e[0m\\n"
printf "\e[36m▏           \e[44;30mWer schreibt, der bleibt.\e[0m                                         \e[36m▕\e[0m\\n"
#printf "\e[36m▏\e[30;48;2;255;192;192mI'm perfectly happy to be schooled if someone more knowledgeable comes along!\e[36m▕\e[0m\\n"
# NOPE: could not find that in the book... it's probably wrongly accounted to Dante
# printf "        \e[44;30m\"He listens to good purpose who takes note.\" ― Dante Alighieri, Inferno\e[0m\\n"

alias portal='cd ~/code/dlr-hpc-portal/hpc_portal;'

printf "\e[36m🮢🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🮣\e[0m\\n"

#
export EDITOR=/usr/bin/vim
export HOSTNAME="$(hostname)"
## __common__ environment variables
##export SHELL=/usr/bin/bash
##export MAIL=/var/spool/mail/$USER
##export TZ=Europe/Berlin
##export MANPATH=/usr/share/man
##
## already defined:
## USER, PWD, HOME, LANG, PS1, TERM, DISPLAY, OSTYPE

export LESSEDIT=/usr/bin/vim

dance_iter() {
    printf "\e[13D🯅            "
    sleep 0.2
    printf "\e[13D🯆            "
    sleep 0.2
    printf "\e[13D🯇            "
    sleep 0.2
    printf "\e[13D🯈            "
    sleep 0.2
    printf "\e[13D🯆            "
}
printf "                                         \e[25l"
for i in $(seq 1 3); do
    dance_iter
done
printf "\e[25h\e[13D"
printf "  Let's do good things\\n"

 	 	 	


# If you're really desperate, just manually edit the file ~/.config/mimeapps.list.
#     from https://askubuntu.com/questions/90214/how-do-i-set-the-default-program
