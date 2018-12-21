export ZSH="/Users/os/.oh-my-zsh"
export PATH=$PATH:$(python3 -m site --user-base)/bin
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/golang", from:oh-my-zsh
zplug "plugins/brew", from:oh-my-zsh
zplug "supercrabtree/k"
zplug "~/.config/zsh", from:local, use:"*.zsh"

if ! zplug check; then
  zplug install
fi

zplug load

test -e "${HOME}/.iterm2_shell_integration.zsh" && \
	source "${HOME}/.iterm2_shell_integration.zsh"

source <(oc completion zsh)

