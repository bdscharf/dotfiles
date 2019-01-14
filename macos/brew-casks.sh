# Install Caskroom

brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install apps

apps=(
    alfred,
    calibre,
    dropbox,
    firefox,
    franz,
    grandperspective,
    iina,
    iterm2,
    karabiner-elements,
    keepassxc,
    keepingyouawake,
    keka,
    macdown,
    polymail,
    textmate,
    transmission,
    ubersicht,
    unetbootin,
    xact,
    xld
)

brew cask install "${apps[@]}"
