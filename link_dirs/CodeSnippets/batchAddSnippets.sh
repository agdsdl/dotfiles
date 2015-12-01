#install snippets in a directory
if [ -z $1 ];then
  echo "input a codesnippet directory"
fi

for file in $1/*
do
xcodesnippet install $file
echo $file has been installed!
done
