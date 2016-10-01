# Steps To Set Up A New Mac 

In the future I will have an install script, but for now you'll need to do these steps. 

1.  Install Xcode from the App store. After installing it, open it and accept the license agreement. This is necessary to use some of the command line tools 
2.  Install the command line tools by running `xcode-select --install`
3.  Copy your SSH keys to your ~/.ssh folder and make sure they have the correct permissions. I store the files for my SSH keys in [Keeper](https://keepersecurity.com)
4. Clone this repo to `~/.dotfiles` and cd into it
5. Add Fish to /etc/shells, which will require an administrative password
```
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
```
This will point to the Homebrew installed Fish version. It doesn't matter for now that we haven't installed it yet but it's necessary before we can set Fish as our default shell

6. Install Homebrew
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
7. Install apps from the Brewfile
```
brew tap homebrew/bundle
brew bundle
```
6. Make Fish your default shell
```
chsh -s /usr/local/bin/fish
```
7. Set MacOS defaults, which are based on those of [Mathias Bynens](https://github.com/mathiasbynens/dotfiles/blob/master/.macos)
```
./.macos
```
8. Make sure Dropbox (or whatever synced storage you've chosen for Mackup) is set up and install your remaining apps from the App Store.
9. Restore app preferences
```
 mackup restore
 ```
 10. Restart your Mac
