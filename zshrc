_src() {
	source "${HOME}/.config/zsh/$1"
}

_pre_init() {
	_src "pre-init/lang.zsh"
	_src "pre-init/path.zsh"
	_src "pre-init/completion.zsh"
}

_init() {
	_src "init/oh-my-zsh.zsh"
}

_post_init() {
	_src "post-init/zplug.zsh"
	_src "post-init/iterm2.zsh"
	_src "post-init/bindings.zsh"
	_src "post-init/tmux.zsh"
}

_pre_init
_init
_post_init


# added by travis gem
[ -f /Users/os/.travis/travis.sh ] && source /Users/os/.travis/travis.sh
