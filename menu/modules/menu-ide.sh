#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# IDE
# ------------------------------------------------------------------------------
# /menu/modules/menu-ide.sh

MENU_IDE="nvim"

MENU_OPTIONS[h]="menu_select_ide|IDE|MENU_IDE"
MENU_OPTIONS[H]="menu_select_custom|IDE (custom)|MENU_IDE"

MENU_KEY="h"

menu_select_ide()
{
    case "$MENU_IDE" in
        nvim)
            MENU_IDE="code"
            ;;
        code)
            MENU_IDE="skip"
            ;;
        skip)
            MENU_IDE="nvim"
            ;;
        *)
            MENU_IDE="nvim"
            ;;
    esac
}
