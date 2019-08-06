# README

These are my personal dotfiles.

# Installation

1. Clone the repository

    ~~~bash
    git clone https://github.com/p-herbert/dotfiles.git $HOME/.dotfiles
    ~~~

2. Create a symbolic link from the repository `.dotfiles` to the home directory

    ~~~bash
    for f in $(find $HOME/.dotfiles -maxdepth 1 -type f -name ".*" -exec basename ';'); do ln -s $f $HOME/$f; done
    ~~~

3. Install [zsh]

    ## MacOS
    ~~~bash
    brew install zsh zsh-completions
    sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh
    ~~~

    ## Ubuntu
    ~~~bash
    sudo apt-get install zsh
    chsh -s $(which zsh)
    ~~~

4. Install [oh-my-zsh]

    ~~~bash
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    ~~~

5. Install [zsh-syntax-highlighting]

    ~~~bash
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.zsh-syntax-highlighting
    ~~~

6. Install [nvm]

    ~~~bash
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
    ~~~

7. Install [node]

    ~~~bash
    nvm install node
    ~~~

8. Install [pyenv]

    ~~~bash
    git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv
    ~~~

9. Install [kubectl-plugins]

    ~~~bash
    git clone https://github.com/jordanwilson230/kubectl-plugins.git
    cd kubectl-plugins
    ./install-plugins.sh
    source ~/.bash_profile
    ~~~

[zsh]: https://www.zsh.org/
[oh-my-zsh]: https://ohmyz.sh/
[zsh-syntax-highlighting]: https://github.com/zsh-users/zsh-syntax-highlighting
[nvm]: https://github.com/creationix/nvm
[node]: https://nodejs.org/en/
[pyenv]: https://github.com/pyenv/pyenv
[kubectl-plugins]: https://github.com/jordanwilson230/kubectl-plugins

