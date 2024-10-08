# .bash_aliases

# General
alias pls='sudo'
alias reload='source ~/.bashrc'
alias grep='grep --color -irn'
alias ll='ls --color -lsaF'
alias cpv='rsync -ah --info=progress2'

# Git
alias gs='git status'
alias ga='git add'
alias gd='git diff'

# k8s
alias k=kubectl
complete -o default -F __start_kubectl k
