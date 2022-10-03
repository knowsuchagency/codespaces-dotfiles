# aliases

alias docker-kill-all='docker kill $(docker ps -q)'

alias tf='terraform'
alias py='python'
alias py3='python3'

alias pip-uninstall-all='pip freeze | grep -v "^-e" | xargs pip uninstall -y'

alias gs='git status'
alias gc='git commit'
alias gcm='git commit -m'
alias gd='git diff'
alias ga='git add'
alias gp='git push'

alias dc='docker-compose'

# functions

function gpb {
  git push origin $(git branch | grep \* | cut -d ' ' -f2)
}

function gpbf {
  git push --no-verify origin $(git branch | grep \* | cut -d ' ' -f2)
}

function activate() {
    local cmd=":"
    local _iii
    declare -F deactivate >/dev/null && {
        echo "### Virtual env already active.  Use deactivate first." >&2
        return
    }
    [ "x$1" = "x-v" ] && cmd=echo
    for _iii in {.venv,venv,.env,env}/bin/activate
    do
        $cmd "### Checking for: $_iii" >&2
        if [ -f "$_iii" ]
        then
            echo "### Activating: $_iii" >&2
            . "$_iii"
            return
        fi
    done
    echo "Error: Unable to locate a virtual env." >&2
}

# pyenv 

export PATH="$HOME/.pyenv/bin:$PATH"
