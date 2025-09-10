# .bashrc
# put the path you want to put here
export PATH=$PATH:/home/relay/panghui/go/bin
export HISTSIZE=100000
export HISTFILESIZE=100000

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

parse_git_branch() {
    local branch=$(git branch 2>/dev/null | sed -n -e 's/^\* \(.*\)/\1/p')
    if [ ! -z "$branch" ]; then
        echo -e "\033[32m($branch)\033[00m"
    fi
}

export PS1="\[\033[35m\]\u\[\033[00m\]@\[\033[35m\]\H\[\033[00m\]:\[\033[36m\]\w\[\033[00m\]\$(parse_git_branch)\n$ "

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias g=git
