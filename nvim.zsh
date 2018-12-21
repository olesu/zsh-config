export VISUAL=nvim
export VIMCONFIG=~/.config/vim
export VIMDATA=~/.local/share/vim

# Use Neovim instead of Vim or Vi
alias vim=nvim
alias vi=nvim

if ! pip3 show -q neovim; then
	pip3 install --user --upgrade neovim
fi

