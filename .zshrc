# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="zhann"

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
plugins=(git textmate lighthouse)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export DJANGO_SETTINGS_MODULE=config.local.django
export PYTHONPATH=$HOME/polychart/ggviz/python:$HOME/projects/uberwriter
export PATH=$PATH:/home/chngr/.cabal/bin:/usr/local/texlive/2012/bin/i386-linux:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/etc/mysql:/usr/lib/postgresql/X.Y/bin:$HOME/android-sdk/sdk/tools:$HOME/android-sdk/sdk/platform-tools:

# Aliases
alias subl='/usr/share/sublimetext2/sublime_text' 
alias mysqlib='/usr/local/infobright/bin/mysql'
alias mysqldib='/usr/local/infobright/bin/mysqld_safe'
alias v=vi
alias c=clear

# Suffic Aliases
alias -s tex=vim
alias -s html=chromium-browser
alias -s rkt=racket
alias -s py=python
alias -s coffee=coffee

# Listing commands
alias lsp="ls -I '*.pyc'"

# 256 colors
export TERM=xterm-256color

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export ANDROID_HOME="$HOME/android-sdk/sdk"

## Rust stuff
export RUST_LOG=rust_log

### Stuff for keyring
keychain --quiet --nolock ~/.sshr/id_rsa 2>/dev/null
. ~/.keychain/chngr-sh
