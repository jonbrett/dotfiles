# dotfiles
My collection of Linux common configuration ".dotfiles", used to share configuration and common utilities between multiple computers.

## Installation
The following snippet can be used to clone the repo and install in the current user's $HOME. Inspired by https://www.atlassian.com/git/tutorials/dotfiles

```
git clone --bare https://github.com/jonbrett/dotfiles.git $HOME/.cfg
function config {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME "$@"
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no
```
