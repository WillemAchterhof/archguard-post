#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Terminal
# ------------------------------------------------------------------------------
# /menu/modules/menu-terminal.sh

MENU_TERMINAL="alacritty"

MENU_OPTIONS[b]="menu_select_terminal|Terminal|MENU_TERMINAL"
MENU_OPTIONS[B]="menu_select_custom|Terminal (custom)|MENU_TERMINAL"

menu_select_terminal()
{
    case "$MENU_TERMINAL" in
        kitty)
            MENU_TERMINAL="alacritty"
            ;;
        alacritty)
            MENU_TERMINAL="foot"
            ;;
        foot)
            MENU_TERMINAL="skip"
            ;;
        skip)
            MENU_TERMINAL="kitty"
            ;;
        *)
            MENU_TERMINAL="kitty"
            ;;
    esac
}
