#!/usr/bin/env bash
# Make sure dotfiles repo is up to date.
git pull

#Links the neovim folder and zshrc to their respective spots.
echo "Linking Neovim and zshrc."
git submodule update --init --depth 1
ln -s ~/devdots/.zshrc ~/
ln -s ~/devdots/nvim/ ~/.config/

#macos package install
echo "Installing homebrew..."
if [ ! -f /usr/local/bin/brew ]; then
    echo "Install Xcode command line tools"
    sudo xcode-select --install
    sudo xcodebuild -license accept

    # Install homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" 
else
    echo "Homebrew already installed, skipping..."
fi

brew install "$(cat homebrew_packages)"
brew cask install "$(cat homebrew-cask_packages)"

echo "done"

