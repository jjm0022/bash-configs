
# Not a fan of ridiculously distracting command prompts. Prompt should
# fade into background, not demand focus. The printf magic ensures that
# any output that does not end with a newline will not put a prompt
# immediately after it. Never forget the \[$color\] brackets that escape
# the width of the color escapes so they don't affect line wrapping.


# https://www.twobitarcade.net/article/add-git-branch-name-to-terminal-prompt-mac/
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\e[31m\]\u\[\e[m\]\[\e[37m\][\[\e[m\]\W\[\e[37m\]]\[\e[m\]\\[\e[38;5;104m\]\$(parse_git_branch)\[\e[m\]\[\e[37m\]:\[\e[m\] "

############################# Editor / Pager #############################
