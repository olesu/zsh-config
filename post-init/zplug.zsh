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
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme
#zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
zplug "~/.config/zsh", from:local, use:"*.zsh"

if ! zplug check; then
	zplug install
fi

zplug load

