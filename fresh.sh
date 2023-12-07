#!/bin/sh

ADDED_BY_FRESH="added by fresh.sh"

echo "Setting up your Mac..."

# Check for Oh My Zsh and install if we don't have it
if test ! $(which omz); then
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$(brew shellenv)"' >> $HOME/.zprofile
  eval "$(brew shellenv)"
fi

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Add the referenct to the .dotfiles/.gitconfig by appending [include] statement to the $HOME/.gitconfig file
if ! grep -q "gitconfig; $ADDED_BY_FRESH" "$HOME/.gitconfig"
then
  echo "Including .dotfiles/.gitconfig to $HOME/.gitconfig"
  tee -a $HOME/.gitconfig > /dev/null << END

[include] # gitconfig; $ADDED_BY_FRESH
	path = $HOME/.dotfiles/.gitconfig
END
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file ./Brewfile

# Intall LTS node version using nvm
nvm install --lts

# Create a working directory
mkdir $HOME/projects

# Clone Github repositories
./clone.sh

# TODO: configure mackup
# Symlink the Mackup config file to the home directory
# ln -s .mackup.cfg $HOME/.mackup.cfg

# Set macOS preferences - we will run this last because this will reload the shell
source ./.macos
