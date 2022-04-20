# .bash_profile is sourced by "interactive login shells" (i.e. ssh, mosh).
# In contrast, .bashrc is sourced by "non-login shells" (i.e. initial mosh
# connection).

source .bashrc

# Show git branch in $PS1
source ~/.git-prompt.sh
export PS1="${PS1:0:${#PS1}-1}\[\033[0;31m\]\$(__git_ps1)\[\033[0m\] "

# Automatically create/attach tmux session
if [[ "$TMUX" == "" ]] && [[ "$SSH_CONNECTION" != "" ]]; then
    SESSION="remote"
    if tmux has-session -t $SESSION 2>/dev/null; then
        tmux attach-session -t $SESSION
    else
        tmux new-session -s $SESSION
    fi
fi

