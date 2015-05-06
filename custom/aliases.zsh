alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ls='ls --color=auto'
alias l='ls -l'
alias ll='ls -ahlF'

alias rm="rm -I"

alias df='df -h'
alias lg='ll | grep'
alias pg='ps aux | grep'

alias tmux='tmux -2'
alias tmuxa='tmux a || tmux'

alias rmds='find . -name ".DS_Store" -delete'
alias rmpyc='find . -name "*.pyc" -delete'

alias wk='pkill -f "wikiserver.py"; nohup python2.6 ~/tools/wiki/wikiserver.py 1>/dev/null 2>&1 &'
alias p='pkill -f sslocal; cd ~/Tools/shadowsocks/; nohup sslocal -c config.json 1>/dev/null 2>&1 &; cd -'
alias y='youtube-dl -c -f 137+172/137+140/best'

alias xld='xl download --continue --delete --tool aria2'
alias xll='xl list --speed --progress'

alias ce='cd ~/workspace/eleme'
alias cdele='cd ~/workspace/eleme/trunk;'
alias cdz='cd ~/workspace/eleme/zeus'
alias cdh='cd ~/workspace/eleme/hades'

alias redis-server='redis-server /usr/local/etc/redis.conf'
