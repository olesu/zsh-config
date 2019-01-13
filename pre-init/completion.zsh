# Configuring Brew completions in ZSH
# Must be done before compinit is called, Oh My ZSH will call compinit, so
# we put this before sourcing oh-my-zsh.zsh
#
# https://docs.brew.sh/Shell-Completion
if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

