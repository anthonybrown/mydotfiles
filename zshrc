ZSH=$HOME/.oh-my-zsh
#ZSH_THEME="cloud"
ZSH_THEME="pixel67"
#ZSH_THEME="cloud"

export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

source ~/.aliases

COMPLETION_WAITING_DOTS="true"

plugins=(git osx rails ruby github node npm brew zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

#export PHP_AUTOCONF=/usr/local/Cellar/autoconf/2.68/bin/autoconf
#export PHP_AUTOHEADER=/usr/local/Cellar/autoconf/2.68/bin/autoheader

# User configuration

# spell check for zsh
setopt CORRECT
setopt DVORAK

#export PATH=$HOME/bin:/usr/local/bin:$PATH
export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# php-osx.liip.ch php install
export PATH=/usr/local/php5/bin:$PATH

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

NPM_PREFIX=`npm config get prefix`
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
