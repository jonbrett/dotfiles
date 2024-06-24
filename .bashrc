# Sanity-check: If not running interactively, don't do anything
case $- in *i*) ;; *) return;; esac

# Load shell dotfiles (note that .exports and .path are loaded by .profile)
for file in ~/.{bash_prompt,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
