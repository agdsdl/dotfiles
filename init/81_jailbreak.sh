
# download opensource files.
CURRENT_PATH=`pwd`
opensourceDir="$HOME/jailbreak/Opensource"
if [ ! -d $opensourceDir ];then
  mkdir -p "$opensourceDir" && cd "$opensourceDir"
else
  cd "$opensourceDir"
fi

openNames=(
  usbmuxd
  theos
  ldid
  cycript
  class-dump
)
openRepos=(
  http://cgit.sukimashita.com/usbmuxd.git/
  git://github.com/DHowett/theos.git
  git://git.saurik.com/ldid.git
  git://git.saurik.com/cycript.git
  https://github.com/nygard/class-dump.git
)

# downloadOpensource opensourceName opensourceRepoUrl
function downloadOpensource() {
  if [ ! -d $1 ];then
    git clone "$2" "$1"
  else
    cd $1
    git pull
    cd ..
  fi
}

for ((i=0;i<${#openNames[@]};i++)); do
  downloadOpensource "${openNames[i]}" "${openRepos[i]}"
done

cd $CURRENT_PATH
