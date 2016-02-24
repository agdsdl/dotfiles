# editor shortcuts for vscode, sublime...

function vscode () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*; }

function sublime () { open -n -b "com.sublimetext.2" --args $*; }
