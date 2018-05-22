# Install Caskroom

brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages

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
    virtualbox,
    xact,
    xld
)

brew cask install "${apps[@]}"

