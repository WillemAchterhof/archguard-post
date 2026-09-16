#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# ArchGuard Post-Install
# ------------------------------------------------------------------------------
# /root-run.sh

set -Eeuo pipefail

# Variables
ROOT_POST="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_MENU="$ROOT_POST/menu"
ROOT_INSTALL="$ROOT_POST/install"


# Module Entry Points
source "$ROOT_MENU/menu-run.sh"
source "$ROOT_INSTALL/install-run.sh"
# source "$ROOT_INSTALL_VIRTUALIZATION/run.sh"
# source "$ROOT_LOAD_CONFIGURATIONS/run.sh"


# Run

menu_render

while true; do
    IFS=read -rsn1 key || continue
    
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
        ;;
    z)
        exit 0
        ;;
esac