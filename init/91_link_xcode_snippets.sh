
# link xcode snippets
linkSourceDir="$DOTFILES/link_dirs/CodeSnippets"
linkToDir="$HOME/Library/Developer/Xcode/UserData"

if [ "$linkSourceDir" -ef "$linkToDir/CodeSnippets" ];then
  echo "link_xcode_snippets is same file"
else
  ln -sfv $linkSourceDir $linkToDir
fi
