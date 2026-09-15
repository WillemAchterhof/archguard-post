#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Desktop Installation
# ------------------------------------------------------------------------------
# /install/install-desktop.sh

install_desktop()
{
    INSTALL_PACKAGES+=" $MENU_DESKTOP_ENV"

    INSTALL_PACKAGES="${INSTALL_PACKAGES// skip/}"

    sudo pacman -S --needed $INSTALL_PACKAGES
}
