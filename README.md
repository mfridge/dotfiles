# dotfiles

## GNU stow
I am using GNU stow to create symlinks out of dotfiles from this repo. `stow` creates symlinks one folder above the current working directory.

**Struktur des Repos:**

    $ tree -a ~/.dotfiles
    .
    ├── bash
    │   ├── .bashrc
    │   └── .profile
    └── vim
        └── .vimrc

**Link erstellen:**

    $ cd ~/.dotfiles
    $ stow vim

    $ ls -la ~ | grep vimrc
    lrwxr-xr-x    1 apearce  staff      20  7 Jan 12:35 .vimrc -> .dotfiles/vim/.vimrc

**Link entfernen:**

    $ stow -D vim
    $ ls -la ~ | grep vimrc
