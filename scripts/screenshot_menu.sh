#!/bin/bash

# Take a screenshot
FILE=$(mktemp --suffix=.png)
grim -g "$(slurp)" "$FILE"

# Open context menu
ACTION=$(zenity --list --title="Screenshot" --column="Action" "Save" "Delete" "Copy to Clipboard")

case $ACTION in
    "Save")
        SAVE_PATH=$(zenity --file-selection --save --confirm-overwrite --title="Save Screenshot")
        if [ -n "$SAVE_PATH" ]; then
            mv "$FILE" "$SAVE_PATH"
        fi
        ;;
    "Delete")
        rm "$FILE"
        ;;
    "Copy to Clipboard")
        wl-copy < "$FILE"
        ;;
esac
