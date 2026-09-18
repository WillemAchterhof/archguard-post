#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# ArchGuard Post-Install
# ------------------------------------------------------------------------------
# /root-run.sh

set -Eeuo pipefail

# Variables
ROOT_POST="$POSTBOOT_ROOT/post_install"
ROOT_MENU="$ROOT_POST/menu"
ROOT_INSTALL="$ROOT_POST/install"
ROOT_CONFIG="$ROOT_POST/config"
ROOT_CLEANUP="$ROOT_POST/cleanup"


# Module Entry Points
source "$ROOT_MENU/menu-run.sh"
source "$ROOT_INSTALL/install-run.sh"
# source "$ROOT_CONFIG/config-run.sh"
source "$ROOT_CLEANUP/cleanup-run.sh"


# Run

menu_render

while true; do
    key=""

    if ! read -rsn1 key; then
        continue
    fi

    case "$key" in
        y|z)
            break
            ;;
        *)
            menu_handle_input "$key"
            ;;
    esac

    menu_render
done

case "$key" in
    y)
        install_desktop
        configure_desktop
        # ...
        cleanup_postboot "${SUDO_USER:-$(whoami)}"
        ;;

    z)
        printf "[*] Post-Install skipped.\n"
        printf "Do you want to cleanup postboot? [y/N] "

        read -r cleanup

        case "${cleanup,,}" in
            y|yes)
                cleanup_postboot "${SUDO_USER:-$(whoami)}"
                ;;
            *)
                printf "[*] Postboot cleanup skipped.\n"
                rm -rf -- /opt/archguard/post_install/
                ;;
        esac
        ;;
esac
