# Use .profile to set exports and PATH (anything not shell-specific or
# for interactive shells)

# Load shell dotfiles
for file in ~/.{path,exports,extra_profile}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
