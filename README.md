# README

# Installation

1. Clone the repository

    git clone https://github.com/p-herbert/dotfiles.git $HOME/.dotfiles

2. Create a symbolic link from the repository `.dotfiles` to the home directory

~~~bash
for f in $(find . -maxdepth 1 -type f -name ".*" -printf "%f\n"); do ln -s $f $HOME/$f; done
~~~

