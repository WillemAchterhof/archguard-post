#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Root Run
# ------------------------------------------------------------------------------
# /root-run.sh

set -Eeuo pipefail

ROOT_POST="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

source "$ROOT_POST/root-source_modules.sh"

menu_render

while true; do
    read -rsn1 key

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
