# CONSOLE
alias h="history"
alias e="exit"

# EDITOR
alias vi="nvim"
alias vim="nvim"
alias c="code ."

# GIT
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
alias gri="git rebase -i"
alias grir="git rebase -i --root"
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias grs="git rebase --skip"
alias gca="git commit --amend"

# DOCKER
alias dps="docker ps --format='table {{.Id}}\t{{.Names}}\t{{.Image}}\t{{.Ports}}\t{{.Status}}'"
alias dpsa="docker ps -a --format='table {{.Names}}\t{{.Image}}\t{{.Ports}}\t{{.Status}}'"
alias dc='docker rm -f $(docker ps -a -q)'
alias dra='docker rm -f $(docker ps -a -q)'
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias dcr="dcd && dcu"

# KUBERNETES
alias ka="kubectl apply -f"
alias kd="kubectl delete -f"
alias 9="k9s"
alias k="kubectl"
alias kctx="kubectl-ctx"
alias kns="kubectl-ns"

# Elixir
alias m="mix"
alias mdg="mix deps.get"
alias mdca="mix deps.clean --all"
alias mc="mix compile"
alias mer="mix ecto.reset"
alias mem="mix ecto.migrate"
alias mt="mix test"
alias mtf="mix test --failed"
alias ms="mix phx.server"

