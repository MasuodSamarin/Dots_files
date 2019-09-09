export LANG="en_US.UTF-8"
# Path to your oh-my-zsh installation.
export ZSH=/home/elsuizo/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="agnoster"
# ZSH_THEME="refined"
# ZSH_THEME="dracula"
# ZSH_THEME="af-magic"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv)
# plugins=(virtualenv vi-mode)
plugins=(virtualenv)
#-------------------------------------------------------------------------
# powerlevel9k theme
#-------------------------------------------------------------------------
POWERLEVEL9K_MODE="nerdfont-complete"
# custom bar
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_arch_icon dir vcs)
POWERLEVEL9K_CUSTOM_ARCH_ICON="echo  archlinux"
# POWERLEVEL9K_CUSTOM_ARCH_ICON_BACKGROUND=000
# POWERLEVEL9K_CUSTOM_ARCH_ICON_FOREGROUND=023
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
export PATH="/home/elsuizo/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games"
# export MANPATH="/usr/local/man:$MANPATH"

# editor de texto
export VISUAL="nvim"

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
#------------------------------------------------------------------------
# alias para folders
#------------------------------------------------------------------------
# alias para ir a la carpeta Firmware
alias firm="cd /home/elsuizo/Repos/Firmware"
# alias para ir a la carpeta firmwarev2
alias firm2="cd /home/elsuizo/Repos/firmware_v2"
#------------------------------------------------------------------------
# alias para archivos
#------------------------------------------------------------------------
# alias para abrir el archivo TODO
alias TODO="nvim ~/Dropbox/Org_mode_files/Personal_org_mode_files/TODO.org"
#------------------------------------------------------------------------
# alias para comandos mas utilizados
#------------------------------------------------------------------------
# alias para saber el statatus de un repositorio github
alias gits="git status"
# alias para lanzar dropbox
alias drop="dropbox start"
# alias para compilar y bajar codigo a la educiaa
alias supermake="make clean && make generate && make && make download"
# alias para compilar la educiaa baremetal
alias makes="make && make download"
#alias para genrar las carpetas clasicas de un proyecto de C con Makefile
alias MAKE_C_PROJECT="mkdir src inc bin obj"
# alias para ir al workspace de ROS
alias ROS_WORK="cd ~/Dev/catking_workspace"
#------------------------------------------------------------------------
# exports
#------------------------------------------------------------------------
# para tener
export PATH=$HOME/bin:$PATH

#Rust paths
export PATH="/home/elsuizo/.cargo/bin:$PATH"

# exercism
export PATH=$HOME/Dev/Exercism/Exercism_bin:$PATH

# julia
export PATH=$HOME/Dev/julia:$PATH

# ruby shit
export PATH=$HOME/.gem/ruby/2.6.0/bin:$PATH

# .bash_aliases
export PATH="/home/elsuizo/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# export NVM_DIR="/home/elsuizo/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
source /opt/ros/melodic/setup.zsh

# para android studio
export ANDROID_SDK_ROOT=$HOME/elsuizo/Dev/android

