# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="bira"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git osx rails bundler)
plugins=(git osx bundler rails ruby terminalapp)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/Applications/Postgres.app/Contents/MacOS/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/usr/local/share/npm/bin:/usr/bin:/usr/local/go/bin:/usr/texbin:$HOME/.cabal/bin/

export LANG=en_US.UTF-8

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

alias vim=/Applications/MacVim.app/Contents/MacOS/Vim

alias v=/Applications/MacVim.app/Contents/MacOS/Vim

export CC=/usr/bin/gcc-4.2

alias Emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"

bindkey '^R' history-incremental-search-backward

export GOPATH=$HOME/go
alias la="ls -ahl"
alias gen_pdf=./generate_pdf.sh
setopt No_HIST_VERIFY

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

function prompt_rvm {
    rbv=`rvm-prompt`
    rbv=${rbv#ruby-}
    [[ $rbv == *"@"* ]] || rbv="${rbv}@default"
    echo $rbv
}

PROMPT='%n@%m %~ $(prompt_rvmOMPT='%n@%m %~ $(prompt_rvm)

source /usr/local/bin/virtualenvwrapper.sh

# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

push_to_staging() {
  local branch=`git rev-parse --symbolic-full-name --abbrev-ref HEAD`
  eval "git push && git checkout staging && git pull && git merge $branch && git push && git checkout $branch"
}

alias qr='qrcode-terminal'
