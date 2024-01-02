# README

These are my personal dotfiles.

## Pre-installation

### macOS

1. Install [brew]

   ```bash
   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
   ```

2. Install [pyenv]

   ```bash
   curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
   ```

3. Install [nvm]

   ```bash
   curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.05/install.sh | bash
   ```

4. Install [zsh]

   ```bash
   brew install zsh zsh-completions
   ```

5. Install [oh-my-zsh]

   ```bash
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
   ```

6. Install [zsh-syntax-highlighting]

   ```bash
   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.zsh-syntax-highlighting
   ```

7. Install packages

   ```bash
   brew install awscli ack act ripgrep the_silver_searcher fzf jq z \
        terraform terraform-ls tree shellcheck efm-langserver docker-completion \
        yamllint openssl
   ```

8. Install [node]

   ```bash
   nvm install 18.18.0
   ```

9. Install node packages

   ```bash
   npm i -g diff-so-fancy @microsoft/compose-language-service yarn neovim typescript
   ```

### Ubuntu

TODO

## Installation

1. Clone the repository

   ```bash
   git clone https://github.com/p-herbert/dotfiles.git $HOME/.dotfiles
   ```

2. Create a symbolic link from the repository `.dotfiles` to the home directory

   ```bash
   for f in $(find $HOME/.dotfiles -maxdepth 1 -type f -name ".*" -exec basename {} \;); do ln -sf $HOME/.dotfiles/$f $HOME/$f; done
   ```

[zsh]: https://www.zsh.org/
[oh-my-zsh]: https://ohmyz.sh/
[zsh-syntax-highlighting]: https://github.com/zsh-users/zsh-syntax-highlighting
[nvm]: https://github.com/creationix/nvm
[node]: https://nodejs.org/en/
[pyenv]: https://github.com/pyenv/pyenv-installer
[brew]: https://brew.sh/
