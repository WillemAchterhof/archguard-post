#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# File Explorer
# ------------------------------------------------------------------------------
# /menu/modules/menu-file-explorer.sh

MENU_FILE_EXPLORER="thunar"

MENU_OPTIONS[c]="menu_select_file_explorer|File Explorer|MENU_FILE_EXPLORER"
MENU_OPTIONS[C]="menu_select_custom|File Explorer (custom)|MENU_FILE_EXPLORER"

MENU_KEY="c"

menu_select_file_explorer()
{
    case "$MENU_FILE_EXPLORER" in
        thunar)
            MENU_FILE_EXPLORER="dolphin"
            ;;
        dolphin)
            MENU_FILE_EXPLORER="files"
            ;;
        files)
            MENU_FILE_EXPLORER="skip"
            ;;
        skip)
            MENU_FILE_EXPLORER="thunar"
            ;;
        *)
            MENU_FILE_EXPLORER="thunar"
            ;;
    esac
}
