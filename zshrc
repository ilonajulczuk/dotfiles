# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="clean"
XDG_CONFIG_HOME='/home/attero/.config'
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias tag='cd ~/Projects/10clouds/tagasauris && . bin/activate && cd app/tagasauris'
alias solr='cd ~/Projects/10clouds/tagasauris/app/solr && ./devel-start.sh'
alias trs='cd ~/Projects/10clouds/tagasauris && . bin/activate && cd app/tagasauris && ./manage.py runserver 0.0.0.0:8001'
alias tro='cd ~/Projects/10clouds/tagasauris && . bin/activate && cd app/tagasauris && ./manage.py offlinetaskrunner --verbosity 3 -C -d1 -p1'
alias trb='cd ~/Projects/10clouds/tagasauris && . bin/activate && cd app/tagasauris && ./manage.py shell_plus'
alias trm='cd ~/Projects/10clouds/tagasauris && . bin/activate && cd app/tagasauris && ./manage.py dbshell'
alias mob='cd ~/Projects/10clouds/tagasauris-iphone && . bin/activate && cd TagMobileBackend'

alias emerge='apt-get install'
alias eix='apt-cache search'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/lib/x86_64-linux-gnu/qt4/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/attero/Downloads/p4v-2013.1.611503/bin:/home/attero/Downloads/sublime_text_2:

function git_diff() {
  git diff --no-ext-diff -w "$@" | vim -R -
}
