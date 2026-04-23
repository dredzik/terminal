# Prompts
export PS1="[%n@%m:%~] [%l]: ";
export PS2=": ";
export PS4="+ ";

# Exports
export EDITOR="vim";
export HISTSIZE="100000";
export SAVEHIST="100000";

# Aliases
alias df="df -h"
alias du="du -h"
alias jq="jq --ascii-output --monochrome-output --raw-output"
alias ls="ls -l"
alias sftp="sftp -C"
alias ssh="ssh -C"

# Ctrl+R gdy ZSH ustawi sobie tryb vi (cokolwiek to jest) 
# ustawiany jest przy EDITOR="vi*" ale czasem nie :P
bindkey -M viins '^R' history-incremental-search-backward
bindkey -M vicmd '^R' history-incremental-search-backward

# Word separators
export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'; 

# Polish letters in folder names
setopt combiningchars

# Paths
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH:/opt/homebrew/bin:$HOME/.rvm/bin"

# Shims
eval "$(pyenv init - zsh)"
eval "$(jenv init -)"
