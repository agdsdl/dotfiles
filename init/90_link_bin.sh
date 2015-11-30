
# link binarys
linkSourceDir="$DOTFILES/link_dirs/bin"
linkToDir="$HOME"

if [ "$linkSourceDir" -ef "$linkToDir/bin" ];then
  echo "link_bin is same file"
else
  ln -sfv $linkSourceDir $linkToDir
fi
