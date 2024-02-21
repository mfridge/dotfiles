# .bash_profile is sourced by "interactive login shells" (i.e. ssh, mosh).
# In contrast, .bashrc is sourced by "non-login shells" (i.e. initial mosh
# connection).

source ~/.bashrc

# Show git branch in $PS1
source ~/.git-prompt.sh

green="\[\033[1;32m\]"
blue="\[\033[1;34m\]"
red="\[\033[1;31m\]"
color_reset="\[\033[0m\]"
export PS1="${PS1}${red}\$(__git_ps1)${color_reset} "

# Automatically create/attach tmux session
if [[ "$TMUX" == "" ]] && [[ "$SSH_CONNECTION" != "" ]]; then
    SESSION="remote"
    if tmux has-session -t $SESSION 2>/dev/null; then
        tmux attach-session -t $SESSION
    else
        tmux new-session -s $SESSION
    fi
fi

