# Wygląd promptów.
export PS1="[%n@%m:%~] [%l]: ";
export PS2=": ";
export PS4="+ ";

# Żeby zawsze sobie wybierał właściwe kodowanie.
# export LANG=`locale -a | grep -i pl | grep -i utf | head -1`;

# Kilka istotnych zmiennych.
export EDITOR="vim";
export HISTSIZE="100000";
export SAVEHIST="100000";
export PATH="${PATH}:/usr/local/bin:/opt/local/bin:/opt/homebrew/bin";

# Aliasy tak jak lubię.
alias du="du -h"
alias df="df -h"
alias ssh="ssh -C"
alias sftp="sftp -C"
alias ls="ls -l"
alias unrar="unrar x"
alias man="LANG=en_US man"

# Żeby działał Home i End.
bindkey '^[[1~' beginning-of-line
bindkey '^[[4~' end-of-line

# Żeby działał Alt lewo/prawo.
bindkey '^[b' backward-word
bindkey '^[f' forward-word

# Żeby działał delete.
bindkey '^[[3~' delete-char
bindkey '^?' backward-delete-char

# Ctrl+R gdy ZSH ustawi sobie tryb vi (cokolwiek to jest) 
# ustawiany jest przy EDITOR="vi*" ale czasem nie :P
bindkey -M viins '^R' history-incremental-search-backward
bindkey -M vicmd '^R' history-incremental-search-backward

# Żeby ^W wszędzie działało tak samo.
bindkey '^W' backward-kill-word
export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>';

# Żeby ZSH kumało pliterki w nazwach katalogów w Mac OS X
setopt combiningchars

##### workplace specific code #####

# Add PyENV shims to PATH.
export PATH="$HOME/.pyenv/shims:$PATH"
export PYENV_SHELL=zsh
command pyenv rehash 2>/dev/null

pyenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(pyenv "sh-$command" "$@")";;
  *)
    command pyenv "$command" "$@";;
  esac
}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Disable ClamAV in tests
export NOCLAMAV=1

# Switching AWS profile
alias aws-profile='function(){eval $(~/Projects/aws-inf/scripts/aws-profile-go/aws-profile $@);}'
alias kibana='~/Projects/aws-inf/scripts/search-kibana-go/search-kibana.sh'
