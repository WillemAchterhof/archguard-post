#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Desktop Installation
# ------------------------------------------------------------------------------
# /install/install-desktop.sh

configure_desktop()
{
    INSTALL_PACKAGES="$MENU_DESKTOP_ENV"


    case "$MENU_DESKTOP_ENV" in
        hyprland) INSTALL_PACKAGES+=" $(<"$ROOT_DESKTOP/hyprland-packages.env")"
        ;;
        skip) INSTALL_PACKAGES=""
        ;;
    esac


    case "$MENU_HYPERVISOR" in
        kvm)
        INSTALL_PACKAGES+=" $(<"$ROOT_DESKTOP/hypervisor-packages.env")"
        ;;
        virtualbox)
        INSTALL_PACKAGES+=" virtualbox virtualbox-host-dkms"
        ;;
    esac

    INSTALL_PACKAGES+=" $MENU_BROWSER"
    INSTALL_PACKAGES+=" $MENU_FILE_EXPLORER"
    INSTALL_PACKAGES+=" $MENU_IDE"
    INSTALL_PACKAGES+=" $MENU_IMAGE_VIEWER"
    INSTALL_PACKAGES+=" $MENU_MEDIA_PLAYER"
    INSTALL_PACKAGES+=" $MENU_PASSWORD_MANAGER"
    INSTALL_PACKAGES+=" $MENU_TERMINAL"

    INSTALL_PACKAGES+=" $(<"$ROOT_DESKTOP/extra-packages.env")"

    INSTALL_PACKAGES="${INSTALL_PACKAGES// skip/}"

    [[ -n "${INSTALL_PACKAGES//[[:space:]]/}" ]] || return 0

    sudo pacman -S --needed --noconfirm $INSTALL_PACKAGES
}
