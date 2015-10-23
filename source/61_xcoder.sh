alias ox="open ./*.xcworkspace 2>/dev/null || open ./*.xcodeproj 2>/dev/null"
alias xcb="sudo xcode-select -s /Applications/Xcode-beta.app/Contents/Developer/"
alias xc7="sudo xcode-select -s /Applications/Xcode.app/Contents/Developer/"
alias xcp="open $HOME/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins"
alias ded="rm -rf $HOME/Library/Developer/Xcode/DerivedData"
alias fucksim="sudo killall -9 Xcode 'iOS Simulator' com.apple.CoreSimulator.CoreSimulatorService && rm -rf ~/Library/Developer/CoreSimulator/Devices"

# Add new UUID of Xcode to plugins
alias xcplug="find ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins -name Info.plist -maxdepth 3 | xargs -I{} defaults write {} DVTPlugInCompatibilityUUIDs -array-add `defaults read /Applications/Xcode.app/Contents/Info DVTPlugInCompatibilityUUID`"

# Activate fuzzy mode for Xcode 7. See https://twitter.com/hamzasood/status/621739073108111360
alias xcfuzzy="defaults write com.apple.dt.Xcode IDECodeCompletionFuzzyMode -int 3"
alias xcfuzzyoff="defaults delete com.apple.dt.Xcode IDECodeCompletionFuzzyMode"

# Debugging Xcode Plugins
# https://coderwall.com/p/-mgtww
alias xcd='xcode-debug'
