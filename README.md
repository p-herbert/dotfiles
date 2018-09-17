# README

Create a symbolic link from the repository `.dotfiles` to the home directory

~~~bash
for f in $(find . -maxdepth 1 -type f -name ".*" -printf "%f\n"); do ln -s $f $HOME/$f; done
~~~

