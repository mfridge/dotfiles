# pip installs binaries to ~/.local/bin
PATH=$PATH:~/.local/bin

# Allow "pip install" only in virtual environments. Use "gpip" to install packages globally (below
# configured alias)
export PIP_REQUIRE_VIRTUALENV=true
gpip() {
    PIP_REQUIRE_VIRTUALENV=false pip "$@"
}

# Alias
alias ls='ls --color=auto -N'
alias grep='grep --color=auto'

