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
    local environment

    while true; do
        read -rp "Desktop Environment [$MENU_DESKTOP_ENV]: " environment

        # Empty input keeps the current selection.
        [[ -z "$environment" ]] && return

        if pacman -Si "$environment" &>/dev/null; then
            MENU_DESKTOP_ENV="$environment"
            return
        fi

        printf "Package '%s' was not found. Please enter a valid package.\n" "$environment"
    done
}
