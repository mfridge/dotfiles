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


# Put your fun stuff here.
alias mount='mount | column -t'
alias ls='ls -N --color'
alias diff='diff --color'
alias r='ranger'

# Enable vim keybindings in bash
set -o vi

# pip installs binaries to ~/.local/bin
PATH=$PATH:~/.local/bin
# Windows PATH should be added to /etc/profile.d. Copy it from another WSL distribution, where the PATH is set through WSL. I don't know why this does not work with Gentoo.

# Set DISPLAY for X410 Windows X-Server
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0

