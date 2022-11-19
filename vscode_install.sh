#!/bin/bash
mkdir -p ~/.config/Code/User
VSCODE_SETTING_DIR=~/.config/Code/User

rm "$VSCODE_SETTING_DIR/settings.json"
ln -snf "$(pwd)/settings.json" "${VSCODE_SETTING_DIR}/settings.json"

# rm "$VSCODE_SETTING_DIR/keybindings.json"
# ln -snf "$SCRIPT_DIR/keybindings.json" "${VSCODE_SETTING_DIR}/keybindings.json"

# install extention
cat extensions | while read line
do
 code --install-extension $line
done

code --list-extensions > extensions