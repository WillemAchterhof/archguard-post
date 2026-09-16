#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Browser
# ------------------------------------------------------------------------------
# /menu/modules/menu-browser.sh

MENU_BROWSER="firefox"

MENU_OPTIONS[d]="menu_select_browser|Browser|MENU_BROWSER"
MENU_OPTIONS[D]="menu_select_custom|Browser (custom)|MENU_BROWSER"

MENU_KEY="d"

menu_select_browser()
{
    case "$MENU_BROWSER" in
        firefox)
            MENU_BROWSER="brave"
            ;;
        brave)
            MENU_BROWSER="chromium"
            ;;
        chromium)
            MENU_BROWSER="skip"
            ;;
        skip)
            MENU_BROWSER="firefox"
            ;;
        *)
            MENU_BROWSER="firefox"
            ;;
    esac
}
