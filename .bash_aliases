

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
alias 'cd..'='cd ..'
alias 'cd...'='cd ../..'
