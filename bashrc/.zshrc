# Git branch in prompt with colors, and display username.
autoload -Uz vcs_info
precmd() { vcs_info }
setopt prompt_subst

zstyle ':vcs_info:git:*' formats '%F{green}(%b)%f'
PROMPT='%F{yellow}%n%f@%m %F{cyan}%~%f ${vcs_info_msg_0_}'$'\n''%# '

