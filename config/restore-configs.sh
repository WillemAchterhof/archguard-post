#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Restore Configs
# ------------------------------------------------------------------------------
# /config/restore-configs.sh
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# Run
# ------------------------------------------------------------------------------

restore_configs()
{
    local repository="$AG_HOME/.archguard/archguard-configs"
    local config_file="$repository/backup-configs.env"
    local background="$AG_HOME/Pictures/BackGround"

    printf "[*] Restoring ArchGuard configs...\n"
s
    restore_copy \
        "$config_file" \
        "$repository"

    mkdir -p -- "$background"
    cp /opt/archguard/backup/ArchGuard.png "$background/ArchGuard.png"

    printf "[*] ArchGuard configs restored.\n"
}