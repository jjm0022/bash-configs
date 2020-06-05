#force colorized file listing
alias vi='vim'
alias cd..='cd ..'

# make it easier to ssh into remote servers
alias prod2prod2='ssh cfanprod2@prod2.cfanclimate.com'
alias prodprod2='ssh cfanprod@prod2.cfanclimate.com'
alias prodprod='ssh cfanprod@prod.cfanclimate.com'
alias prod2prod='ssh cfanprod2@prod.cfanclimate.com'
alias jjmillerprod='ssh jjmiller@prod.cfanclimate.com'
alias jjmillerprod2='ssh jjmiller@prod2.cfanclimate.com'
alias cfanweb='ssh cfanweb@37.156.67.230'
alias seedbox='ssh jmiller@ziva.bysh.me'

# aliases for git
alias gst='git status'
alias gb='git branch -v' 

# aliasse for tmux
alias tll='tmux ls'
alias ta='tmux a -t'
alias tn='tmux new -s'

# since you can't remember the options for rsync
alias rsync='rsync -azvh'
