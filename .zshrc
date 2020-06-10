# If you come from bash you might have to change your $PATH.
export GOPATH=$HOME/Go
export PATH=/usr/local/go/bin:$GOPATH/bin:$HOME/.local/bin:/usr/local/bin:$PATH:$HOME/.cargo/bin:/usr/local/julia-1.3.0/bin:$HOME/miniconda3/bin

# Path to your oh-my-zsh installation.
export ZSH="/home/peter/.oh-my-zsh"
ZSH_THEME="cust_agnoster"
source $ZSH/oh-my-zsh.sh

autoload -U colors && colors

export DEFAULT_USER="peter"
export TERM=rxvt-unicode-256color

_prompt_pwd () {
  echo "${PWD/#$HOME/~}" | sed -e 's-\(\.*[^/]\)[^/]*/-\1/-g'
}

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"


# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
plugins=(git sudo zsh-autosuggestions)


# User configuration

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR"'/keeagent.socket'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias vi="vim"
alias temacs="emacs -nw"
alias cls="clear; ls"
alias x="rm ./*~ 2> /dev/null"
alias git_cheat="(find ~ -name git_cheat_sheet.png | xargs viewnior &)"
alias pacman="sudo pacman"
alias nc="sudo nc"

alias summit="ssh pesh5067@login.rc.colorado.edu"
alias linode="ssh root@crow.haus" 

alias venv="python3 -m venv ./venv"
alias venv2="python2 -m virtualenv ./venv"
alias activate="source ./venv/bin/activate"

alias ofxclient="ofxclient -c ~/.config/ofxclient.ini"

alias wg="sudo wg"
alias vpn="sudo wg-tog"

alias sqlite="sqlite3"

alias condapy="~/miniconda3/bin/python3"

# ledger cli
export LEDGER_FILE="/home/peter/Desktop/Finances/my.ledger"

# dots
alias dots='git --git-dir=$HOME/.dots.git/ --work-tree=$HOME'

#NVM 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/peter/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/peter/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/peter/miniconda3/etc/profile.d/conda.sh"
    else
#        export PATH="$PATH:/home/peter/miniconda3/bin"
    fi
fi
unset __conda_setup

