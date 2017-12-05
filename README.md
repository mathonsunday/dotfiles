# NOTE: This is out of date and no longer actively maintained. It was great for learning how dotfiles work but I have a fork of Mathias Bynens's current dotfiles that I will be using for myself in the future. 

# Steps To Set Up A New Mac 

In the future I will have an install script to reduce the number of steps. 

* Install Xcode from the App store. After installing it, open it and accept the license agreement. This is necessary to use some of the command line tools 
* Install the command line tools by running `xcode-select --install`
* Copy your SSH keys to your ~/.ssh folder and make sure they have the correct permissions. I store the files for my SSH keys in [Keeper](https://keepersecurity.com)
* Clone this repo to `~/.dotfiles` and cd into it
* Add [Fish](https://fishshell.com/) to /etc/shells, which will require an administrative password
```
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
```
This will point to the Homebrew installed Fish version. It doesn't matter for now that we haven't installed it yet but it's necessary before we can set Fish as our default shell
* Install Homebrew
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
* Install apps from the Brewfile
```
brew tap homebrew/bundle
brew bundle
```
* Make Fish your default shell
```
chsh -s /usr/local/bin/fish
```
* Set MacOS defaults, which are based on those of [Mathias Bynens](https://github.com/mathiasbynens/dotfiles/blob/master/.macos)
```
./.macos
```
* Make sure Dropbox (or whatever synced storage you've chosen for [Mackup](https://github.com/lra/mackup)) is set up and install your remaining apps from the App Store
* Restore app preferences
```
 mackup restore
 ```
 * Restart your Mac
