export PATH=$PATH:$(python3 -m site --user-base)/bin

_src() {
	source "${HOME}/.config/zsh/$1"
}

export FZF_DEFAULT_COMMAND='rg --files'

_src "pre-init/completion.zsh"

export ZSH="/Users/os/.oh-my-zsh"
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/golang", from:oh-my-zsh
zplug "plugins/brew", from:oh-my-zsh
zplug "supercrabtree/k"
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/iterm2", from:oh-my-zsh
zplug "plugins/mvn", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh
zplug "laurenkt/zsh-vimto"
zplug "willghatch/zsh-saneopt"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "peterhurford/git-aliases.zsh"
zplug "chrissicool/zsh-256color"
zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
zplug "~/.config/zsh", from:local, use:"*.zsh"

if ! zplug check; then
  zplug install
fi

zplug load

test -e "${HOME}/.iterm2_shell_integration.zsh" && \
	source "${HOME}/.iterm2_shell_integration.zsh"


