# pip installs binaries to ~/.local/bin
PATH=$PATH:~/.local/bin

# Show git branch in $PS1
source ~/.git-prompt.sh
export PS1="${PS1:0:${#PS1}-1}\[\033[0;31m\]\$(__git_ps1)\[\033[0m\] "

# Allow "pip install" only in virtual environments. Use "gpip" to install packages globally (below
# configured alias)
export PIP_REQUIRE_VIRTUALENV=true
gpip() {
    PIP_REQUIRE_VIRTUALENV=false pip "$@"
}

# Alias
alias ls='ls --color=auto -N'
alias grep='grep --color=auto'
alias mount='mount | column -t'
alias gnucash-de='LANGUAGE=de_DE.UTF-8 LANG=de_DE.UTF-8 gnucash'

