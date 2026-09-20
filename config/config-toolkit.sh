#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# ArchGuard Post-Install — Configure Toolkit
# ------------------------------------------------------------------------------
# /config/config-toolkit.sh
# ------------------------------------------------------------------------------

config_toolkit()
{
    local toolkit_root="$AG_HOME/.archguard/toolkit"
    local configs_destination="$toolkit_root/archguard-configs"

    local toolkit_repo="https://github.com/WillemAchterhof/archguard-toolkit.git"
    local configs_repo="https://github.com/WillemAchterhof/archguard-configs.git"

    printf '[*] Installing ArchGuard Toolkit...\n'

    mkdir -p -- "$toolkit_root"

    git clone \
        "$toolkit_repo" \
        "$toolkit_root"

    printf '[*] Installing ArchGuard Configs...\n'

    git clone \
        "$configs_repo" \
        "$configs_destination"

    printf '[*] ArchGuard Toolkit configured.\n'
}
