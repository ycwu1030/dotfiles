# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

setopt nonomatch

alias sshtyr="ssh -X tyr.physics.carleton.ca"
alias sshthor="ssh -X thor.physics.carleton.ca"
alias sshtheory="ssh -Y 134.117.23.67" 
alias sshihep="ssh -Y wuyc@lxslc7.ihep.ac.cn"
alias sshpete="ssh -Y pete.hpc.okstate.edu"
alias packsubmit="tar -cvzf article.tar.gz *"
alias sshfspete="/Users/ycwu/Workingspace/dotfiles/sshfs-remote.sh"
alias sshor="ssh -i ~/.ssh/ssh-key-2021-07-17-Oracle.key opc@129.159.46.214"
source /usr/local/bin/thisroot.sh
#source /Users/ycwu/Workingspace/Utilities/root-6.24.00/bin/thisroot.sh
source /Users/ycwu/anaconda3/etc/profile.d/conda.sh
# alias ExpAna="export PATH=/Users/ycwu/anaconda3/bin:$PATH"
# alias ModifyTime="~/.config/vnote/resources/ModifiedTime.sh"
alias ModifyTime="while true; do fswatch --one-event /Users/ycwu/Documents/vnote_notebooks | xargs -I '{}' ~/.config/vnote/resources/ModifiedTime.sh '{}';sleep 10; done"
alias resetql="qlmanage -r"
alias math="/Applications/Mathematica.app/Contents/MacOS/MathKernel"
alias zim="open -a /Applications/zim.app"
alias zimtest="GTK_DEBUG=interactive /usr/local/bin/zim"
source /Users/ycwu/Workingspace/MC-Generator/WHIZARD/2.8.5/bin/whizard-setup.sh
source /Users/ycwu/Workingspace/Utilities/LHAPDF/SET_LHAPDF.sh
# "/usr/local/bin/python3 /Users/ycwu/Downloads/Applications/zim-0.72.0/zim.py"

source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
