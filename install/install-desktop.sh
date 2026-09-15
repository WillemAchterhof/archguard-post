#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Desktop Installation
# ------------------------------------------------------------------------------
# /install/install-desktop.sh

install_desktop()
{
    INSTALL_PACKAGES+="$MENU_DESKTOP_ENV"

    if [[ "$MENU_DESKTOP_ENV" == "hyprland" ]]; then
        INSTALL_PACKAGES+=" $(<"$ROOT_DESKTOP/hyprland/packages.env")"
    fi

    INSTALL_PACKAGES="${INSTALL_PACKAGES// skip/}"

    sudo pacman -S --needed --noconfirm $INSTALL_PACKAGES
}
