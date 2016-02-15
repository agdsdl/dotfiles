if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home
export NDK=~/apps/android-ndk-r9d
ANDROID_SDK=~/Library/Android/sdk/platform-tools
MAVEN_PATH=~/Documents/necessities/apache-maven-3.1.0/bin
ARM_GCC_BIN=/Developer/Platforms/iPhoneOS.platform/Developer/usr/llvm-gcc-4.2/bin
Cycript_BIN=~/tools/Cycript_0
GRADLE_BIN=~/apps/gradle-2.3/bin
export THEOS=~/jailbreak/Opensource/theos/bin
export PLATFORM=/Developer/Platforms/iPhoneOS.platform
export PATH=~/bin:~/link_bin:~/jailbreak/bin:$THEOS:$NDK:$ANDROID_SDK:$GRADLE_BIN:$MAVEN_PATH:$ARM_GCC_BIN:$Cycript_BIN:$PATH
export REACT_EDITOR="'/Applications/Sublime Text 2.app/Contents/MacOS/Sublime Text 2'"

eval "$(rbenv init -)"

export iOSOpenDevPath=/opt/iOSOpenDev
export iOSOpenDevDevice=192.168.2.2
export PATH=/opt/iOSOpenDev/bin:$PATH

# MacPorts Installer addition on 2014-01-17_at_12:57:18: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
