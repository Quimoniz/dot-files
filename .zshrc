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
HIST_STAMPS="yyyy-mm-dd"

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

# From blastmaster
#   and comments via https://unix.stackexchange.com/a/108840
# this makes man pages look nicer...
export LESS_TERMCAP_mb=$'\E[01;31m'    # Start Blink
export LESS_TERMCAP_md=$'\E[01;37m'    # Start Bold
export LESS_TERMCAP_me=$'\E[0m'        # Turn Off bold/blink/underline
export LESS_TERMCAP_so=$'\E[01;44;33m' # Start StandOut
export LESS_TERMCAP_se=$'\E[0m'        # Stop  StandOut
export LESS_TERMCAP_us=$'\E[01;32m'    # Start Underline
export LESS_TERMCAP_ue=$'\E[0m'        # Stop  Underline



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
set -C
### help set
### ...
###      -H  Enable ! style history substitution.  This flag is on
###          by default when the shell is interactive.
### ...
### Using + rather than - causes these flags to be turned off.
##set +H          

# Needed for e.g. 'terminaltexteffects'
source $HOME/HOME_VENV/bin/activate

## git clone https://gitlab.com/phoneybadger/pokemon-colorscripts.git
##  cd pokemon-colorscripts
## sudo ./install.sh

POKE_DB_REPOSITORY="$HOME/code/pokemon-colorscripts"
SUMMED_UP_DATE=$(($(date +%s) / 86400)) # arbitrary number which stays the same for the whole calendar day
RANDOM_POKE=$((${SUMMED_UP_DATE} % 150)) # The first edition has 150 pokemons here
RANDOM_FIRST_EDITION_POKEMON="$(jq ".[${RANDOM_POKE}].name" ${POKE_DB_REPOSITORY}/pokemon.json)" # Query the name in the JSON with the tool 'jq'
RANDOM_FIRST_EDITION_POKEMON="${RANDOM_FIRST_EDITION_POKEMON:1:-1}"  # Strip Double Quotes
export POKEMON_IMAGE="$(pokemon-colorscripts --no-title --name "${RANDOM_FIRST_EDITION_POKEMON}")";
# https://de.wikipedia.org/wiki/Liste_der_Pok%C3%A9mon
# var tableWithNames= document.querySelectorAll("table.wikitable")[0]; allBuf = new Array(); for(var curPoke of tableWithNames.querySelectorAll("tr")) {var curNames = new Object(); var langs=[undefined, undefined, undefined, "german", undefined, "english", undefined, "french", undefined, "katakana", undefined, "katakana-transcription"]; for(curIndex of [3, 5, 7, 9, 11]) { var curEle = curPoke.childNodes[curIndex].childNodes[0]; if(curEle.tagName && curEle.tagName.length > 0) {curNames[langs[curIndex]] = curEle.title;} else {curNames[langs[curIndex]] = curEle.data;} } allBuf.push(curNames)} prompt("Pokemon-Namen, JSON:", JSON.stringify(allBuf));
POKEMON_GERMAN_NAME="$(jq '.['${RANDOM_POKE}'].german' $HOME/pokemon-list.json)"
POKEMON_GERMAN_NAME="${POKEMON_GERMAN_NAME:1:-1}"
POKEMON_TEXT="${POKEMON_GERMAN_NAME} (${RANDOM_FIRST_EDITION_POKEMON})"
BLINKING="\e[5m"
BLINKING=""
export POKEMON_DESCRIPTION="$(printf "%4s #%3d \e[37;40m${BLINKING}%s\e[0m%$((60 - ${#POKEMON_TEXT}))s\\n" "" "$((${RANDOM_POKE} + 1))" "${POKEMON_TEXT}" "")";
#
# Look at 'infocmp' for ansi escape character informations

# New in Unicode as of 2020:
#    https://en.wikipedia.org/wiki/Box-drawing_character
#printf \"\e[36m▏\e[30;48;2;255;192;192mI'm perfectly happy to be schooled if someone more knowledgeable comes along!\e[36m▕\e[0m\\n\"
# NOPE: could not find that in the book... it's probably wrongly accounted to Dante
# printf \"        \e[44;30m\\"He listens to good purpose who takes note.\\" ― Dante Alighieri, Inferno\e[0m\\n\"
# \e[36m▏        \e[44;30mWer schreibt, der bleibt.\e[0m                                         \e[36m▕\e[0m
export BOX_TEXT="$(printf "
\e[36m🮠▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔🮡\e[0m
\e[36m▏ \e[40;32mRobustness principle: be conservative in what you do,\e[36m             ▕\e[0m
\e[36m▏  \e[40;32m    be liberal in what you accept from others -- Jon Postel\e[36m      ▕\e[0m
\e[36m▏ \e[40;33;3mOnly do what you have been tasked to do.\e[0m                          \e[36m▕\e[0m
\e[36m▏ \e[40;36mTry to aim only for fulfilling the MUST goals.\e[0m                    \e[36m▕\e[0m
\e[36m▏ \e[40;36mFulfill the SHOULD goals only if they happen to fall in your way.\e[0m \e[36m▕\e[0m
\e[36m▏  \e[44;30m 广记不如淡墨 a powerful memory cannot compare with pale ink     \e[36m▕\e[0m
\e[36m▏  \e[44;30m (政学录 (Political Science Records) by 尹会一 (Yin Huiyi)).\e[0m     \e[36m▕\e[0m
\e[36m🮢🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🭻🮣\e[0m")
"
#\e[36m▏    \e[40;34mAdditionally, perhaps, you might want to also start the server with\e[0m   \e[36m▕\e[0m
#\e[36m▏        \e[47;30;1m./run.sh\e[0m                                                          \e[36m▕\e[0m
#\e[36m▏    \e[40;34mOr perhaps invoke some tests with something like     \e[0m                 \e[36m▕\e[0m
#\e[36m▏        \e[47;30;1msource ../venv/bin/activate;\e[0m                                      \e[36m▕\e[0m
#\e[36m▏        \e[47;30;1mpython3 manage.py test projects.tests.ProjectOverviewTesting\e[0m      \e[36m▕\e[0m

export TEXT_MOTIVATOR="
  見ざる   (Mizaru)   See   no evil.
  聞かざる (Kikazaru) Hear  no evil.
  言わざる (Iwazaru)  Speak no evil.
"

echo "${POKEMON_IMAGE}";
# https://github.com/ChrisBuilds/terminaltexteffects/tree/main
{ python3 -c $'
from os import getenv
#from terminaltexteffects.effects.effect_binarypath import BinaryPath
from terminaltexteffects.effects.effect_print import Print

# Adapted from: https://stackoverflow.com/a/14693789
import re
def remove_color_codes(text):
    # 7-bit C1 ANSI sequences
    ansi_escape = re.compile(r\'\x1B(?:[@-Z\\-_]|\\[[0-?]*[ -/]*[@-~])\')
    return ansi_escape.sub(\'\', text)

text_to_animate = getenv("POKEMON_DESCRIPTION") + \\
                  getenv("BOX_TEXT") + \\
                  getenv("TEXT_MOTIVATOR")

all_effects = [
  Print(remove_color_codes(text_to_animate)),
 ]
# Binary Path
#all_effects[0].effect_config.final_gradient_steps = 4
#all_effects[0].effect_config.movement_speed = 4.0
#all_effects[0].effect_config.active_binary_groups = 0.4
all_effects[0].effect_config.print_speed = 4 
all_effects[0].effect_config.print_head_return_speed = 8.0

for effect in all_effects:
    with effect.terminal_output() as terminal:
        for frame in effect:
            terminal.print(frame)
' }

#
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
# Used by e.g. MariaDB, git
export PAGER=/usr/bin/less
export PATH="${HOME}/.local/bin:${PATH}"

dance_iter() {
    local chars="🯆🯇🯈🯆🯅";
    chars=""
    for i in $(seq 0 4); do
        printf "\e[13D${chars:$i:1}            ";
        [ $i -lt 4 ] && sleep 0.2;
    done
}
lennyfaces_iter() {
    local lennyfaces="♨(⋆‿⋆)♨
╘[◉﹃◉]╕
╕[◉﹃◉]╘
(ﾉ◕ヮ◕)ﾉ*:･ﾟ✧"
    while read cur_lenny; do
        lennytext="$(printf "${cur_lenny}" | tr -d "\\n")";
        lennylen=${#lennytext};
        filllen=$((25 - $lennylen))
        printf "\e[1K\e[50D%20s${lennytext} %${filllen}s" '' '';
        sleep 0.2;
    done <<< "${lennyfaces}";
}

printf "                                         \e[25l"
#for i in $(seq 1 2); do
#    lennyfaces_iter
#done
printf "\e[25h\e[13D\\n"
#printf "  Let's do good things\\n"

 	 	 	


# If you're really desperate, just manually edit the file ~/.config/mimeapps.list.
#     from https://askubuntu.com/questions/90214/how-do-i-set-the-default-program

TODO_FILE_NAME="TODO_TODAY.txt"
cat "$HOME/${TODO_FILE_NAME}" | sed "s/^/${TODO_FILE_NAME}:    /"
TAGEBUCH_FILE="$HOME/Documents/tagebuch/$(date +%Y-%m-%d).md";
if test -f "${TAGEBUCH_FILE}"; then
    printf "Last entries to Tagebuch (today):\n";
    tail "${TAGEBUCH_FILE}" | sed $'s/^/Tagebuch:    \e[3m/;s/\$/\e[0m/;';
    #if test -f ".${TAGEBUCH_FILE}.swp"; then
    #fi;
fi;
printf "You may edit Tagebuch like so:\n";
#printf "  \e[33;40mvim %s\e[0m\n" "${TAGEBUCH_FILE}"
printf "  \e[33;40mtagebuch\e[0m\n"

# To be able to run latest greatest Node.js
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm use 22
