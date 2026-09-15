#!/usr/bin/env bash
# /root-run.sh
set -Eeuo pipefail

POST_ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

source "$POST_ROOT/root-source_modules.sh"

menu_render

while true; do
    read -rsn1 key

    case "$key" in
        y)
            break
            ;;
        z)
            exit 0
            ;;
        *)
            menu_handle_input "$key"
            ;;
    esac

    menu_render
done
