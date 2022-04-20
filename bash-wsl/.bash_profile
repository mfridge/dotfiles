# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

# Enable vim keybindings in bash
set -o vi

# Show git branch in $PS1
source ~/.git-prompt.sh
export PS1="${PS1:0:${#PS1}-1}\[\033[0;31m\]\$(__git_ps1)\[\033[0m\] "
