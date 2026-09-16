#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Password Manager
# ------------------------------------------------------------------------------
# /menu/modules/menu-password-manager.sh

MENU_PASSWORD_MANAGER="keepassxc"

MENU_OPTIONS[i]="menu_select_password_manager|Password Manager|MENU_PASSWORD_MANAGER"
MENU_OPTIONS[I]="menu_select_custom|Password Manager (custom)|MENU_PASSWORD_MANAGER"

MENU_KEY="i"

menu_select_password_manager()
{
    case "$MENU_PASSWORD_MANAGER" in
        keepassxc)
            MENU_PASSWORD_MANAGER="bitwarden"
            ;;
        bitwarden)
            MENU_PASSWORD_MANAGER="skip"
            ;;
        skip)
            MENU_PASSWORD_MANAGER="keepassxc"
            ;;
        *)
            MENU_PASSWORD_MANAGER="keepassxc"
            ;;
    esac
}
