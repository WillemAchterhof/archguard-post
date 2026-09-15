#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Desktop Installation
# ------------------------------------------------------------------------------
# /install/install-desktop.sh

install_desktop()
{
    INSTALL_PACKAGES+=" $MENU_DESKTOP_ENV"

    sudo pacman -S --needed $INSTALL_PACKAGES
}
