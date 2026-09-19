#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Restore Configs
# ------------------------------------------------------------------------------
# /config/restore-configs.sh
# ------------------------------------------------------------------------------

source "$ROOT_CONFIG/../lib/backup-copy.sh"

# ------------------------------------------------------------------------------
# Run
# ------------------------------------------------------------------------------

restore_configs()
{
    local repository="$HOME/.archguard/archguard-configs"
    local config_file="$repository/backup-configs.env"
    local background="$HOME/Pictures/BackGround"

    printf "[*] Restoring ArchGuard configs...\n"

    restore_copy \
        "$config_file" \
        "$repository"

    mkdir -p -- "$background"
    cp /opt/archguard/backup/ArchGuard.png "$background/ArchGuard.png"

    printf "[*] ArchGuard configs restored.\n"
}