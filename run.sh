#!/usr/bin/env bash
# /run.sh
set -Eeuo pipefail

POST_INSTALL_ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

source "$POST_INSTALL_ROOT/source_modules.sh"

render_menu
