
# link xcode Plug-ins
linkSourceDir="$DOTFILES/link_dirs/Plug-ins"
linkToDir="$HOME/Library/Application Support/Developer/Shared/Xcode"

if [ "$linkSourceDir" -ef "$linkToDir/Plug-ins" ];then
  echo "link_xcode_plugins is same file"
else
  ln -sfv $linkSourceDir "$linkToDir"
fi
