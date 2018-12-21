export ZSH="/Users/os/.oh-my-zsh"
export VISUAL=nvim
export VIMCONFIG=~/.config/vim
export VIMDATA=~/.local/share/vim

ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/golang", from:oh-my-zsh
zplug "plugins/brew", from:oh-my-zsh
zplug "supercrabtree/k"

if ! zplug check; then
  zplug install
fi

zplug load

test -e "${HOME}/.iterm2_shell_integration.zsh" && \
	source "${HOME}/.iterm2_shell_integration.zsh"

source <(oc completion zsh)

# Use Neovim instead of Vim or Vi
alias vim=nvim
alias vi=nvim

