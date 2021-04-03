# Show git branch in $PS1
source ~/.git-prompt.sh
export PS1="${PS1:0:${#PS1}-1}\[\033[0;31m\]\$(__git_ps1)\[\033[0m\] "

# pip installs binaries to ~/.local/bin
PATH=$PATH:~/.local/bin

alias emerge='NICE=10 /usr/bin/emerge'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias mount='mount | column -t'

