# CONSOLE
alias h="history"
alias e="exit"
alias ps="ps -Ao user,pid,%cpu,%mem,vsz,rss,tt,stat,start,time,command"

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
alias gco="git checkout"
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

alias ghdaa="gh run list --json databaseId  -q '.[].databaseId' | xargs -IID gh run delete ID"

# DOCKER
alias dps="docker ps --format='table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Ports}}\t{{.Status}}'"
alias dpsa="docker ps -a --format='table {{.Names}}\t{{.Image}}\t{{.Ports}}\t{{.Status}}'"
alias dc='docker rm -f $(docker ps -a -q)'
alias dra='docker rm -f $(docker ps -a -q)'
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias dcr="dcd && dcu"
alias dl="docker logs -f"
alias de="docker exec -it"
alias dr="docker restart"
alias ds="docker stop"

# KUBERNETES
alias k="kubectl"
alias ka="kubectl apply -f"
alias kd="kubectl delete -f"
alias 9="k9s"
alias kctx="kubectl-ctx"
alias kns="kubectl-ns"

# Rust
alias cc="cargo check"
alias cmt="cargo make test"
alias cmci="cargo make clippy-ci"
alias cf="cargo fmt"

# Elixir
alias m="mix"
alias mf="mix format"
alias mdg="mix deps.get"
alias mdca="mix deps.clean --all"
alias mc="mix compile"
alias mer="mix ecto.reset"
alias mem="mix ecto.migrate"
alias mt="mix test"
alias mtf="mix test --failed"
alias ms="mix phx.server"


