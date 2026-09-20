#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# ArchGuard Post-Install — Configure Toolkit
# ------------------------------------------------------------------------------
# /config/config-toolkit.sh
# ------------------------------------------------------------------------------

initialize()
{
    printf '[*] Initializing ArchGuard...\n'
    printf '[*] User: %s\n' "$AG_USER"
    printf '[*] Home: %s\n' "$AG_HOME"

    local toolkit="$AG_HOME/.archguard/toolkit"

    source "$toolkit/archguard-toolkit.sh"
    source "$toolkit/backup-configs/backup-configs.env"
    source "$toolkit/lib/restore-copy.sh"

    printf '[*] Initialization complete.\n'
}

config_toolkit()
{
    local archguard_root="$AG_HOME/.archguard"
    local toolkit_repo="https://github.com/WillemAchterhof/archguard-toolkit.git"
    local toolkit_destination="$archguard_root/toolkit"
    local configs_repo="https://github.com/WillemAchterhof/archguard-configs.git"
    local configs_destination="$archguard_root/archguard-configs"

    printf '[*] Installing ArchGuard Toolkit...\n'

    mkdir -p -- "$archguard_root"

    git clone \
        "$toolkit_repo" \
        "$toolkit_destination"

    printf '[*] Installing ArchGuard Configs...\n'

    git clone \
        "$configs_repo" \
        "$configs_destination"

    printf '[*] ArchGuard Toolkit configured.\n'

    initialize
}