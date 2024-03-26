#! /bin/zsh

# Install Xcode
xcode-select –-install
osascript -e 'display notification "Xcode CLT installed Succesfully!!!" sound name "Submerge" with title "Welcome to DL"'
sleep 3

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
osascript -e 'display notification "Homebrew installed Succesfully!!!" sound name "Submerge" with title "Welcome to DL"'

# Install the apps
apps=(  'firefox' 
        'brave-browser'
        'vlc'
        'protonvpn'
        'google-chrome'
        'free-download-manager'
        'dropbox'
        'db-browser-for-sqlite'
        'whatsapp'
        'pycharm-ce'
        'anydesk'
        'utm'
        'appcleaner'
        'libreoffice'
        'thunderbird'
        'handbrake'
        'keycastr'
        'visual-studio-code'
        'mamp'
        'webex'
        'webex-meetings'
        'telegram'
        'zoom'
        )

for f in $apps;
do
brew install --cask $f
echo $f installed Successfully!!!
done

osascript -e 'display notification "Apps Installed Successfully!!!" sound name "Submerge" with title "Welcome to DL"'
