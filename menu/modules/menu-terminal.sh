#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Terminal
# ------------------------------------------------------------------------------
# /menu/modules/menu-terminal.sh

MENU_TERMINAL="alacritty"

MENU_OPTIONS[b]="menu_select_terminal|Terminal|MENU_TERMINAL"
MENU_OPTIONS[B]="menu_select_custom|Terminal (custom)|MENU_TERMINAL"

MENU_KEY="b"

menu_select_terminal()
{
    case "$MENU_TERMINAL" in
        alacritty)
            MENU_TERMINAL="konsole"
            ;;
        konsole)
            MENU_TERMINAL="gnome-terminal"
            ;;
        gnome-terminal)
            MENU_TERMINAL="skip"
            ;;
        skip)
            MENU_TERMINAL="alacritty"
            ;;
        *)
            MENU_TERMINAL="alacritty"
            ;;
    esac
}
