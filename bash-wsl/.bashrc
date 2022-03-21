# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Set alias
alias mount='mount | column -t'
alias ls='ls -N --color'
alias diff='diff --color'
alias r='ranger'

# Allow "pip install" only in virtual environments. Use "gpip" to install packages globally (below
# configured alias)
export PIP_REQURE_VIRTUALENV=true
gpip() {
    PIP_REQUIRE_VIRTUALENV=false pip "$@"
}

# pip installs binaries to ~/.local/bin
PATH=$PATH:~/.local/bin

# WSL bug with authentication agent
# See https://stackoverflow.com/a/50942800
eval "$(ssh-agent -s)" &> /dev/null
ssh-add ~/.ssh/id_rsa &> /dev/null
