#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Desktop Installation
# ------------------------------------------------------------------------------
# /install/install-desktop.sh

install_desktop()
{
    INSTALL_PACKAGES="$MENU_DESKTOP_ENV"

    case "$MENU_DESKTOP_ENV" in
        hyprland) INSTALL_PACKAGES+=" $(<"$ROOT_DESKTOP/hyprland-packages.env")"
        ;;
    esac

    INSTALL_PACKAGES="${INSTALL_PACKAGES// skip/}"

    sudo pacman -S --needed --noconfirm $INSTALL_PACKAGES
}
