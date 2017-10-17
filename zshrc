# Wygląd promptów.
export PS1="[%n@%m:%~] [%l]: ";
export PS2=": ";
export PS4="+ ";

# Żeby zawsze sobie wybierał właściwe kodowanie.
export LANG=`locale -a | grep -i pl | grep -i utf | head -1`;

# Kilka istotnych zmiennych.
export EDITOR="vim";
export HISTFILE="${HOME}/.history";
export HISTSIZE="1000";
export SAVEHIST="1000";
export PATH="${PATH}:/usr/local/bin:/opt/local/bin";

# Java
export JAVA_HOME=$(/usr/libexec/java_home);

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

# Ctrl+R gdy ZSH ustawi sobie tryb vi (cokolwiek to jest) 
# ustawiany jest przy EDITOR="vi*" ale czasem nie :P
bindkey -M viins '^R' history-incremental-search-backward
bindkey -M vicmd '^R' history-incremental-search-backward

# Żeby ^W wszędzie działało tak samo.
bindkey '^W' backward-kill-word
export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>';

# Żeby ZSH kumało pliterki w nazwach katalogów w Mac OS X
setopt combiningchars

function n () {
	for i in $*; do
		napi $i;
		napiconvert $i;
	done
}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
