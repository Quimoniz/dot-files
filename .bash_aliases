

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


alias tivoli_query='DSM_LOG=/opt/tivoli/tsm/client/ba/bin sudo -E /usr/bin/dsmc q fi -optfile=/opt/tivoli/tsm/client/ba/bin/dsm.opt'
alias tivoli_test='DSM_LOG=/opt/tivoli/tsm/client/ba/bin sudo -E /usr/bin/dsmc q inclexcl -optfile=/opt/tivoli/tsm/client/ba/bin/dsm.opt'

alias adminvpn='/opt/cisco/anyconnect/bin/vpn connect adminvpn.zih.tu-dresden.de'
alias vpn='/opt/cisco/anyconnect/bin/vpn'
alias gitsum='git diff --compact-summary $(git log --since=$(date --date=@$(($(date +%s) - 86400*7)) +%Y-%m-d) --format=%H | tail -n 1)'
alias gitpretty='git log --pretty=oneline --abbrev-commit'
alias gitgraph='git log --graph --decorate --oneline'
alias 'cd..'='cd ..'
alias 'cd...'='cd ../..'
alias python="printf '\\e[41;30mAppend the number 3,\e[43;30m do use \e[42;30mpython3\e[0m\n'"
alias portal='cd ~/code/zapp/hpc_portal;'
# --force-with-lease is a safer option that will not overwrite any work on the remote branch if more commits were added to the remote branch (by another team-member or coworker or what have you). It ensures you do not overwrite someone elses work by force pushing. ( https://stackoverflow.com/a/52823955 )
alias forcepush='git push --force-with-lease'
alias watt='echo $(($(cat power_now) / 1000000))'
alias tagebuch='vim -c "colorscheme murphy" /home/jitschin/Documents/tagebuch/$(date +%Y-%m-%d).md'
alias zate='./scripts/run-containers.sh down && docker compose build --progress=plain && ./scripts/run-containers.sh up'
# parallelized variant:
alias zatep='(./scripts/run-containers.sh down &); docker compose build && ./scripts/run-containers.sh up'


# Thanks to @tilsche
alias cpr='rsync -r --info=progress2'
function mkd() {
  mkdir "$1"
  cd "$1"
}


#inst()
#{
#  p=$(cd $1 2> /dev/null && pwd -P)
#  prepend LD_LIBRARY_PATH $p/lib
#  prepend PATH $p/bin
#  prepend LIBRARY_PATH $p/lib
#  prepend C_INCLUDE_PATH $p/include
#  prepend CPLUS_INCLUDE_PATH $p/include
#}
