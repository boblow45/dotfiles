export PATH=$HOME/.local/bin:$PATH

# git editor settings
export VISUAL=code
export EDITOR="$VISUAL"
export GIT_EDITOR=nano

# adding git branch to prompt
_parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
parse_git_branch() {
	OUTPUT=$(_parse_git_branch)
	LENGTH=${#OUTPUT}
	if [ $LENGTH -ne 0 ]; then
		printf " %s " $OUTPUT
	fi
}
# Add the following to the PS1 declaration
# \[\033[33m\]$(parse_git_branch)
###############################################################################
