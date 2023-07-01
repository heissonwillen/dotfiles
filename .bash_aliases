# Kubernetes
alias k='kubectl'
alias kc='k config view --minify | grep name'
alias kdp='kubectl describe pod'
alias kd='kubectl describe pod'
alias ke='kubectl explain'
alias kf='kubectl create -f'
alias kg='kubectl get pods --show-labels'
alias kr='kubectl replace -f'
alias ks='kubectl get namespaces'
alias kga='k get pod --all-namespaces'
alias kgaa='kubectl get all --show-labels'

# Python venv
alias cvenv="python3.11 -m venv venv"
alias avenv="deactivate > /dev/null 2>&1 ; source venv/bin/activate"

# Git
alias gs='git status'
alias gf='git fetch'
alias gc='git commit'
alias gp='git pull --rebase'
alias gcam='git commit --amend --no-edit'
alias gtmp='git commit -m "chore: Temporary commit"'
alias gri='git rebase -i'
alias grih='git rebase -i HEAD~10'

# Misc
alias c='clear'
alias l='ls -la'
alias treee="git ls-tree -r --name-only HEAD | tree --fromfile"
alias pcommit="rm -f flake-report.json mypy.txt ; pre-commit run --all-files"
alias token="/opt/homebrew/bin/python3.11 /Users/heissonlima/Projects/Personal/scripts/get_keycloak_token.py| pbcopy"
alias lint="nodemon --exec 'rm -f flake-report.json mypy.txt ruff-report.json; pre-commit run --all-files' --ignore flake-report.json --ignore mypy.txt --ignore ruff-report.json --watch . --ext '*'"
