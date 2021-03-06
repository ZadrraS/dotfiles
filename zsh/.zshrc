# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="zadrras"
export TERM=xterm-256color

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# This breaks zsh autosuggest, so we disable it
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
    vi-mode
    colorize
    adb
    ant
    git
    brew
    brew-cask
    colored-man
    python
    safe-paste
    dircycle
    docker
    encode64
    zsh-syntax-highlighting
    zsh-autosuggestions
    taskwarrior
)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PREFIXPATH:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin:$PATH
export PATH="$HOME/.local/bin:$HOME/.pyenv/bin:$HOME/.poetry/bin:$PATH" # A local bin dir in home!
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/cuda/lib64/
bindkey -v

bindkey '^[[A' up-line-or-search                                                
bindkey '^[[B' down-line-or-search
bindkey '^[[3~' delete-char
bindkey '^[3;5~' delete-char

# colored completion - use my LS_COLORS
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

alias ls='ls -h --color'

# Open the right editor when requested ;)
alias vim='nvim'
alias vi='nvim'
export EDITOR='nvim'

# SSH agent should be available everywhere
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# Hilarious!
eval $(thefuck --alias)

export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpg-connect-agent updatestartuptty /bye > /dev/null

eval "$(pyenv init -)"
source ~/.local_paths
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

alias fh="feh --force-aliasing --auto-zoom"
