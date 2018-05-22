# README

Create a symbolic link from the repository `.dotfiles` to the home directory

~~~bash
for f in $(ack -f); do ln -s ~/.dotfiles/$f ~; done
~~~
