#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Desktop Installation
# ------------------------------------------------------------------------------
# /install/install-desktop.sh

install_desktop()
{
    INSTALL_PACKAGES=""

    case "$MENU_DESKTOP_ENV" in
        hyprland)
            INSTALL_PACKAGES+=" hyprland"
            ;;
        plasma)
            INSTALL_PACKAGES+=" plasma"
            ;;
        gnome)
            INSTALL_PACKAGES+=" gnome"
            ;;
        skip)
            return
            ;;
    esac

    sudo pacman -S --needed $INSTALL_PACKAGES
}
