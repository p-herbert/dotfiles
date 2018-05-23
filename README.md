# README

Create a symbolic link from the repository `.dotfiles` to the home directory

~~~bash
for f in $(find . -maxdepth 1 -type f -execdir echo {} ';'); do ln -s ~/.dotfiles/$f ~; done
~~~

