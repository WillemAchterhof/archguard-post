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
        skip) INSTALL_PACKAGES=""
        ;;
    esac

    INSTALL_PACKAGES="${INSTALL_PACKAGES// skip/}"

    [[ -n "${INSTALL_PACKAGES//[[:space:]]/}" ]] || return 0

    sudo pacman -S --needed --noconfirm $INSTALL_PACKAGES
}
