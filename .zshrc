# Path to your oh-my-zsh installation.
export ZSH=/Users/dsere/.oh-my-zsh
export TERM="xterm-256color"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"
DEFAULT_USER="λ"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# TODO: Review Jenv setup
export PATH="/Users/dsere/.jenv/shims:${PATH}"
source "/usr/local/Cellar/jenv/0.4.4/libexec/libexec/../completions/jenv.zsh"
jenv rehash 2>/dev/null
export JENV_LOADED=1
unset JAVA_HOME
jenv() {
  typeset command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  enable-plugin|rehash|shell|shell-options)
    eval `jenv "sh-$command" "$@"`;;
  *)
    command jenv "$command" "$@";;
  esac
}

alias mdfindhere="mdfind -onlyin $(pwd)"
export PATH=${PATH}:/usr/local/texlive/2015/bin/x86_64-darwin
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#export NVM_DIR="$HOME/.nvm"
#. "$(brew --prefix nvm)/nvm.sh"
export NVM_DIR="$HOME/.nvm"
. "/usr/local/Cellar/nvm/0.31.2/nvm.sh"
export PATH=$PATH:/Users/dsere/.cargo/bin


POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status os_icon load context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time)
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_CHANGESET_HASH_LENGTH=6


export DEFAULT_USER="λ"
export USER="λ"
export SLIMERJSLAUNCHER=/Applications/Firefox.app/Contents/MacOS/firefox



alias resetterm="stty sane; tput rs1;"

alias l="exa -l"                                                                
alias ls="exa"                                                                  
alias ll="exa -ghlSmU --git"                                                    
alias lt="exa -hlT"                                                             
                                                                               
s() { emacsclient -c "$@" & }
alias st="emacsclient -t --alternate-editor=\"\""
alias space=st

export PATH=/usr/local/miniconda3/bin:"$PATH"

source "/usr/local/opt/nvm/nvm.sh"
eval "$(jenv init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

setenv () {
    if [ "x$1" = "x" ] ; then
      echo "$0: environment variable name required" >&2
    elif [ "x$2" = "x" ] ; then
      echo "$0: environment variable value required" >&2
    else
      export $1=$2
    fi
}

unsetenv () {
    if [ "x$1" = "x" ] ; then
      echo "$0: environment variable name required" >&2
    else
      unset $1
   fi
}

autoload -Uz compinit
compinit
# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

alias icat="kitty +kitten icat"

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

