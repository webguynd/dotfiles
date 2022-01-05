# Path to oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# Themeing
ZSH_THEME="gallois"

# Disable auto-update checks
DISABLE_AUTO_UPDATE="true"

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# default editor
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='vim'
fi

# for NVM (Node Version Manager)
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# NVM Bash completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Path
export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/opt/ruby/lib/:$PATH"
