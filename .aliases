# Python venv
alias cvenv="python3.11 -m venv venv"
alias avenv="deactivate > /dev/null 2>&1 ; source venv/bin/activate"

alias c="clear"

# Git
alias gtmp='git commit -m "chore: Temporary commit"'
alias gri='git rebase -i'
alias grih='git rebase -i HEAD~10'
alias gc='git commit --all --verbose'

# Misc
alias treee="git ls-tree -r --name-only HEAD | tree --fromfile"
alias pcommit="rm -f flake-report.json mypy.txt ; pre-commit run --all-files"
alias lint="nodemon --exec 'rm -f flake-report.json mypy.txt ruff-report.json; pre-commit run --all-files' --ignore flake-report.json --ignore mypy.txt --ignore ruff-report.json --watch . --ext '*'"
alias kc="sudo docker compose -f $HOME/Projects/Platform/keycloak/dev/kc-local-compose/docker-compose.yml up --build --force-recreate"
