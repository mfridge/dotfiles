# .bash_profile is sourced by "interactive login shells" (i.e. ssh, mosh).
# In contrast, .bashrc is sourced by "non-login shells" (i.e. initial mosh
# connection).

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Show git branch in $PS1
source ~/.git-prompt.sh
export PS1="${PS1:0:${#PS1}-1}\[\033[0;31m\]\$(__git_ps1)\[\033[0m\] "

