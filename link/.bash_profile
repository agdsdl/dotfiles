if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

export NDK=~/apps/android-ndk-r9d
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home
ARM_GCC_BIN=/Developer/Platforms/iPhoneOS.platform/Developer/usr/llvm-gcc-4.2/bin
Cycript_BIN=~/tools/Cycript_0
export THEOS=~/opt/theos
export PLATFORM=/Developer/Platforms/iPhoneOS.platform
PATH=~/Library/Android/sdk/platform-tools:~/Documents/necessities/apache-maven-3.1.0/bin:$ARM_GCC_BIN:$Cycript_BIN:~/bin/:$NDK:$PATH
export PATH=~/apps/gradle-2.3/bin:$PATH
export REACT_EDITOR="'/Applications/Sublime Text 2.app/Contents/MacOS/Sublime Text 2'"

export iOSOpenDevPath=/opt/iOSOpenDev
export iOSOpenDevDevice=192.168.3.4
export PATH=/opt/iOSOpenDev/bin:$PATH

# MacPorts Installer addition on 2014-01-17_at_12:57:18: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
