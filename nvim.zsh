export VISUAL=nvim
export VIMCONFIG=~/.config/vim
export VIMDATA=~/.local/share/vim
export FZF_DEFAULT_COMMAND='rg --files'

# Use Neovim instead of Vim or Vi
alias vim=nvim
alias vi=nvim

if ! pip3 show -q neovim; then
	pip3 install --user --upgrade neovim
fi

if ! pip3 show -q neovim-remote; then
	pip3 install --user --upgrade neovim-remote
fi

if [ -n "$NVIM_LISTEN_ADDRESS" ]; then
	prompt_powerlevel9k_teardown
	if [ -x "$(command -v nvr)" ]; then
		alias nvim=nvr
	else
		alias nvim='echo "No nesting!"'
	fi
else
	prompt_powerlevel9k_setup
fi

