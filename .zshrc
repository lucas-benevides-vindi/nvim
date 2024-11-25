# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

ZSH_THEME="powerlevel10k/powerlevel10k"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH="$PATH:/opt/nvim-linux64/bin"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias bashrc='nvim ~/.bashrc'
alias zshrc='nvim ~/.zshrc'
alias nvimrc='nvim ~/.config/nvim/init.vim'
alias atualiza='sudo apt-get update && sudo apt-get upgrade'

alias upbash='docker-compose run --rm web bash'

alias railsc='docker-compose -f docker-compose.yml -f docker-compose.local.yml run --rm web bundle exec rails console'

alias docker-compose='docker compose'
alias dbcreate='docker-compose -f docker-compose.yml -f docker-compose.local.yml run --rm web bundle exec rake db:create'
alias dbdrop='docker-compose -f docker-compose.yml -f docker-compose.local.yml run --rm web bundle exec rake db:drop'
alias dbsetup='docker-compose -f docker-compose.yml -f docker-compose.local.yml run --rm web bundle exec rake db:setup'
alias dbseed='docker-compose run --rm web bundle exec rails db:seed'
alias dbreset='docker-compose -f docker-compose.yml -f docker-compose.local.yml run --rm web bundle exec rails db:reset'
alias dbrollback='docker-compose run --rm web bundle exec rails db:rollback'
alias dbstatus='docker-compose -f docker-compose.yml -f docker-compose.local.yml run --rm web bundle exec rake db:migrate:status'
alias dbmigrate='docker-compose run --rm web bundle exec rake db:migrate RAILS_ENV=development'
alias gmigration='docker-compose run --rm web bundle exec rails generate migration'

alias droutes='docker-compose run --rm web bundle exec rails routes'
alias dbundle='docker-compose run --rm web bundle install'
alias dbundleupdate='docker-compose run --rm web bundle update'
alias minitest='docker-compose run --rm web bundle exec ruby -I test'

alias drspec='docker-compose run --rm web bundle exec rspec'
alias brakeman='docker-compose run --rm web bundle exec brakeman'
alias drubocop='docker-compose run --rm web bundle exec rubocop -c .bundle/.rubocop.yml'

alias reek='docker-compose run --rm web reek -c .bundle/.defaults.reek'
alias dockerc='docker exec -it recurrent_web_1 bash'
alias dgem='docker-compose run --rm web bundle exec gem install'
alias index='docker-compose run --rm web bundle exec pg_stat_user_indexes'

alias exportroutes='docker-compose run --rm web bundle exec rails g task route_formatter csv'
alias runexportroutes='docker-compose run --rm web bundle exec bin/rails route_formatter:csv'

alias up='docker-compose -f docker-compose.yml -f docker-compose.local.yml up'
alias down='docker-compose down'

alias dpull='docker-compose pull'
alias dbuild='docker-compose build'

alias capsesc="setxkbmap -option caps:escape"


export UID
export USER
export BUNDLE_ENTERPRISE__CONTRIBSYS__COM=
export BUNDLE_GITHUB__COM=
