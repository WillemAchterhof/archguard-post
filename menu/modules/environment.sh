#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Desktop Environment
# ------------------------------------------------------------------------------
# /menu/modules/environment.sh

select_environment()
{
    case "$MENU_DESKTOP_ENV" in
        hyprland)
            MENU_DESKTOP_ENV="plasma"
            ;;
        plasma)
            MENU_DESKTOP_ENV="gnome"
            ;;
        gnome)
            MENU_DESKTOP_ENV="skip"
            ;;
        skip)
            MENU_DESKTOP_ENV="hyprland"
            ;;
    esac
}

select_environment_custom()
{
    read -rp "Desktop Environment: " MENU_DESKTOP_ENV
}
