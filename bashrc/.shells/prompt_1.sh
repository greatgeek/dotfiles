parse_git_branch() {
    local branch=$(git branch 2>/dev/null | sed -n -e 's/^\* \(.*\)/\1/p')
    if [ ! -z "$branch" ]; then
        echo -e "\033[32m($branch)\033[00m"
    fi
}

if [ -n "$ZSH_VERSION" ]; then
  echo "当前是 zsh"
elif [ -n "$BASH_VERSION" ]; then
  export PS1="\[\033[35m\]\u\[\033[00m\]@\[\033[35m\]\H\[\033[00m\]:\[\033[36m\]\w\[\033[00m\]\$(parse_git_branch)\n$ "
else
  echo "既不是 bash 也不是 zsh"
fi

