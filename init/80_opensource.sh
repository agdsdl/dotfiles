
# download opensource files.
CURRENT_PATH=`pwd`
opensourceDir="$HOME/work/Opensource"
if [ ! -d $opensourceDir ];then
  mkdir -p "$opensourceDir" && cd "$opensourceDir"
else
  cd "$opensourceDir"
fi

openNames=(
  chisel
  DLIntrospection
  WinObjC
  z
)
openRepos=(
  https://github.com/facebook/chisel.git
  https://github.com/garnett/DLIntrospection.git
  https://github.com/Microsoft/WinObjC.git
  https://github.com/rupa/z.git
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
