if [ -r ~/.profile ]; then . ~/.profile; fi

# Source .bashrc for interactive shells only
case "$-" in *i*) if [ -r ~/.bashrc ]; then . ~/.bashrc; fi;; esac
