# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gentoo"

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias zshreload=". ~/.zshrc"
alias plan="okular ~/Studies/plan.pdf &"
alias sesja="okular Studies/Plan\ sesji\ zimowej_1314.pdf &"
alias -s png=feh
alias -s jpg=feh
alias -s jpeg=feh
alias -s avi=mpv
alias -s mkv=mpv

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
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
setopt interactivecomments

# Customize to your needs...
alias shcuts="xfconf-query -c xfce4-keyboard-shortcuts -l -v | cut -d'/' -f4 | awk '{printf "%30s", $2; print "\t" $1}' | sort | uniq | less"
alias slb="echo mem | sudo tee /sys/power/state > /dev/null && slock"
alias labfiz="cd ~/Studies/labfiz2"
alias ret="cd ~/Projects/retrospective && . py3/bin/activate"
alias hasatt="cd ~/Projects/hasatt"
alias vags="bundle exec 'vagrant ssh'"
alias vagup="bundle exec 'vagrant up'"
alias vagrel="bundle exec 'vagrant reload'"
alias tag="cd ~/Projects/tag/"
alias chaos="cd ~/Projects/chaos && . py3/bin/activate"
alias hyper="cd ~/Projects/hypergraph && . py3/bin/activate && PYTHONPATH='$PYTHONPATH:/home/att/Projects/hypergraph/'"
alias ch2="cd ~/Projects/chaos && . py2/bin/activate"
alias blog="cd ~/Projects/blogging/tiny_struggles && . ~/Projects/blogging/bin/activate"
alias lt="~/LightTable/LightTable"
alias ipno="ipython notebook"
alias vcat='vimcat'
export EDITOR='vim'
export IPYTHONDIR='~/.ipython'
export TERMINAL="konsole"
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/opt/bin:/usr/x86_64-pc-linux-gnu/gcc-bin/4.7.3:/usr/games/bin:/home/att/.cabal/bin/:/home/att/anaconda/bin/

fortune


echo "If bored look here: http://www.rayninfo.co.uk/tips/zshtips.html"
export TERM='xterm-256color'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
