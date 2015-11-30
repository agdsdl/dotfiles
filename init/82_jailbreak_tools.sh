
# install jailbreak tools.
CURRENT_PATH=`pwd`
opensourceDir="$HOME/jailbreak/Opensource"
THEOS_BIN="$opensourceDir/theos/bin"

if [ ! -d $opensourceDir ];then
  mkdir -p "$opensourceDir" && cd "$opensourceDir"
else
  cd "$opensourceDir"
fi

if [ ! -d $THEOS_BIN ];then
  echo theos not downlaoded.
else
  cd $THEOS_BIN
  if [ ! -f ldid ];then
    wget http://joedj.net/ldid
    sudo chmod 777 ./ldid
    sudo ./bootstrap.sh substrate
  fi

  echo "input your iphone ip address"
  read iphoneIP
  if [ -z $iphoneIP ];then
    echo "no iphone ip, skip copy cydia substrate..."
  else
    cd ../lib
    scp "root@$iphoneIP:/Library/Frameworks/CydiaSubstrate.framework/CydiaSubstrate" ./
    mv CydiaSubstrate libsubstrate.dylib
    cd ../bin
  fi

  if [ ! -f dpkg-deb ];then
    echo "https://raw.githubusercontent.com/DHowett/dm.pl/master/dm.pl"
    wget https://raw.githubusercontent.com/DHowett/dm.pl/master/dm.pl
    mv dm.pl dpkg-deb
    sudo chmod 777 dpkg-deb
  fi

  echo "another 5 theos template"
  cd ..
  if [ ! -f templates/iphone/cydget.nic.tar ];then
    wget https://codeload.github.com/DHowett/theos-nic-templates/zip/master
    unzip master
    mv ./theos-nic-templates-master/* ./templates/iphone/
    rm -rf theos-nic-templates-master
    rm master
  else
    echo "already have it."
  fi

  cd $CURRENT_PATH
fi
