alias h="history"
alias gs="git status"
alias gaa="git add *"
alias gcm="git commit"
alias gpm="git pull --rebase origin master"
alias gp="git push"
alias gpf="git push --force"
alias gcom="git checkout master && gpm"
alias gcob="git checkout -b"
alias gss="git stash -u"
alias gsa="git stash apply"
alias gl="git log --pretty=format:'%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s' --date=short"

alias dps="docker ps --format='table {{.Names}}\t{{.Image}}\t{{.Ports}}\t{{.Status}}'"
alias dpsa="docker ps -a --format='table {{.Names}}\t{{.Image}}\t{{.Ports}}\t{{.Status}}'"
alias dc='docker rm -f $(docker ps -a -q)'
alias dra='docker rm -f $(docker ps -a -q)'
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias dcr="dcd && dcu"

alias ka="kubectl apply -f"
alias kd="kubectl delete -f"
alias 9="k9s"
alias k="kubectl"
alias kctx="kubectl-ctx"
alias kns="kubectl-ns"

alias vi="nvim"
alias vim="nvim"
alias c="code ."

