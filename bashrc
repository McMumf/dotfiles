# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

get_git_branch() {
  git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Prompt Customization
export PS1="\n\[\033[01;31m\]\u@\[\033[01;36m\]\h \[\033[01;36m\]\$(get_git_branch) \[\033[01;37m\]\w \[\033[01;35m\]\n\$ \e[0;37m"

# Aliases
alias pls='sudo'
alias reload='source ~/.bashrc'
alias grep='grep --color -irn'
alias fgb='cd $OLDPWD'
