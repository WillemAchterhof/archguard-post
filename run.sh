#!/usr/bin/env bash
# /run.sh
set -Eeuo pipefail

POST_ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

source "$POST_ROOT/source_modules.sh"

render_menu

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
            handle_input "$key"
            ;;
    esac

    render_menu
done
