#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# ArchGuard Post-Install — Configure Toolkit
# ------------------------------------------------------------------------------
# /config/config-toolkit.sh
# ------------------------------------------------------------------------------

config_toolkit()
{
    local toolkit_repo="https://github.com/WillemAchterhof/archguard-toolkit.git"
    local configs_repo="https://github.com/WillemAchterhof/archguard-configs.git"

    printf '[*] Installing ArchGuard Toolkit...\n'

    mkdir -p -- "$TOOLKIT_ROOT"

    git clone \
        "$toolkit_repo" \
        "$TOOLKIT_ROOT"

    printf '[*] Installing ArchGuard Configs...\n'

    git clone \
        "$configs_repo" \
        "$CONFIGS_DESTINATION"

    printf '[*] ArchGuard Toolkit configured.\n'
}
