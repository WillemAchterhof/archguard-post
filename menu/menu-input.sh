#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Menu Input
# ------------------------------------------------------------------------------
# /menu/menu-input.sh

menu_handle_input()
{
    case "$1" in
        a) menu_select_environment ;;
        A) menu_select_custom "MENU_DESKTOP_ENV" ;;
        *) printf "Invalid selection.\n" ;;
    esac
}
