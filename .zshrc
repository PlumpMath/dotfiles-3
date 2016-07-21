# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Functions
ggc() { open -a "/Applications/Google\ Chrome/" "$@" }

# ec is a zsh script which checks if emacs is running and start it if not.
# then it calls emacsclient
# emacs is assumed to be emacs-plus installed via homebrew

# Example aliases
alias zconf="ec -n ~/.zshrc"
alias ohmyzsh="ec -n ~/.oh-my-zsh"
alias la="ls -la"
alias ggc="open -a /Applications/Google\ Chrome.app"

# For using git on the command line
# If the Gui is open it will use the GUI and wait for the response:
export EDITOR='/Users/zand/bin/ec'

# Sublime Edit 2
# SUBL='/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'
# if [[ -e "$SUBL" ]]
# 	then
#         alias subl="'$SUBL'"
#         alias nano="subl"
#         export EDITOR="subl-wrapper"
#     fi
# unset SUBL

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew colorize colored-man git git-extras history history-substring-search lein osx sublime themes dircycle node npm pip python)

source $ZSH/oh-my-zsh.sh
eval "$(rbenv init -)"
