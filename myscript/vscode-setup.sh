#!/bin/bash
##VSCode setting
echo "---set Visual Studio Code---"
mkdir -p ~/.config/Code/User
VSCODE_SETTING_DIR=~/.config/Code/User
rm "$VSCODE_SETTING_DIR/settings.json"
ln -snf "$(pwd)/settings.json" "${VSCODE_SETTING_DIR}/settings.json"
cat extensions | while read line
do
 code --install-extension $line
done
code --list-extensions > extensions
echo "---set Visual Studio Code completed---"