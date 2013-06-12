# Finder
# ------

# Show extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Empty trash securely
defaults write com.apple.finder EmptyTrashSecurely -bool true

# Use current directory as default search scope
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Display full path in Finder windows 
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# No status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool false

# Text in Quick Look is selectable
defaults write com.apple.finder QLEnableTextSelection -bool true

# Disable Finder animations
defaults write com.apple.finder DisableAllAnimations -bool true

# I will change file extensions whenever I got'damn please
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# I've never used AirDrop but it'll happen more now
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

# Show ~/Library
chflags nohidden ~/Library

# Stop .DS_Store on networks
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Dock and stuff
# --------------

# Hide battery time and percentage
defaults write com.apple.menuextra.battery ShowPercent -string "NO"
defaults write com.apple.menuextra.battery ShowTime -string "NO"

# Pin Dock to middle, make it the right size
defaults write com.apple.dock pinning -string middle
defaults write com.apple.dock tilesize -int 32

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# Menu bar should be transparent
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool true

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -boolean YES

# No Dock exposé
defaults write com.apple.dock show-expose-menus -boolean no

# Disable Dock bouncing
defaults write com.apple.dock launchanim -bool false

# Faster showing of the Dock
defaults write com.apple.dock autohide-time-modifier -float 0.5

# Keyboard and mouse stuff
# ------------------------

# No press-and-hold stuff, nor autocorrect
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# HOW FAST YOU WANT THOSE KEYS TO REPEAT???
defaults write NSGlobalDomain KeyRepeat -int 0

# Trackpad tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Scroll more better
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Enable keyboard access everywhere
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# I never use Safari, but...
# --------------------------

# No Safari bookmark bar
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Backspace goes back in Safari
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true

# Safari developer stuff (debug, develop menu, web inspector)
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Twitter
# -------

# No smart quotes
defaults write com.twitter.twitter-mac AutomaticQuoteSubstitutionEnabled -bool false

# Open links in background
defaults write com.twitter.twitter-mac openLinksInBackground -bool true

# Close the "new tweet" dialog with Escape
defaults write com.twitter.twitter-mac ESCClosesComposeWindow -bool true

# Full names
defaults write com.twitter.twitter-mac ShowFullNames -bool true

# Misc.
# -----

# Expand save and print panels by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Disable "hey um did you not wanna open this, it's from Internet"
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Destroy Ping in iTunes
defaults write com.apple.iTunes disablePingSidebar -bool true
defaults write com.apple.iTunes disablePing -bool true

# Graphite, not Aqua
defaults write NSGlobalDomain AppleAquaColorVariant -int 6

# Speed up dialog boxes
defaults write NSGlobalDomain NSWindowResizeTime 0.1

# Lower screensharing image quality to 16-bit
defaults write com.apple.ScreenSharing controlObserveQuality 4

# Screenshots should be PNG "Screenshot" not "Screen Shot", and on Desktop
defaults write com.apple.screencapture name "Screenshot"
defaults write com.apple.screencapture location -string "$HOME/Desktop"
defaults write com.apple.screencapture type -string "png"

# MacVim options
defaults write org.vim.MacVim MMTabOptimumWidth 180

# All done!
# ---------

killall Finder
killall Dock
killall SystemUIServer