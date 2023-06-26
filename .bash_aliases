# Kubernetes
alias k='kubectl'
alias kc='k config view --minify | grep name'
alias kdp='kubectl describe pod'
alias c='clear'
alias kd='kubectl describe pod'
alias ke='kubectl explain'
alias kf='kubectl create -f'
alias kg='kubectl get pods --show-labels'
alias kr='kubectl replace -f'
alias ks='kubectl get namespaces'
alias l='ls -lrt'
alias kga='k get pod --all-namespaces'
alias kgaa='kubectl get all --show-labels'

# Python venv
alias cvenv="python3.11 -m venv venv"
alias avenv="source venv/bin/activate"

# Git
alias gs='git status'
alias gf='git fetch'
alias gc='git commit'
alias gp='git pull --rebase'
alias gcam='git commit --amend'

# Misc
alias treee='git ls-tree -r --name-only HEAD | tree --fromfile'
