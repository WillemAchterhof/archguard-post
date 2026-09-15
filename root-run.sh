#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Root Run
# ------------------------------------------------------------------------------
# /root-run.sh

set -Eeuo pipefail

POST_ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

source "$POST_ROOT/root-source_modules.sh"

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
        install_environment
        ;;
    z)
        exit 0
        ;;
esac
