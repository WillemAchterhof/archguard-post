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
    local repository="$CONFIGS_DESTINATION"
    local config_file="$TOOLKIT_ROOT/backup-configs/backup-configs.env"
    local background="$HOME/Pictures/BackGround"

    mkdir -p -- "$background"

    cp \
        /opt/archguard/backup/ArchGuard.png \
        "$background/ArchGuard.png"

    source "$TOOLKIT_ROOT/lib/restore-copy.sh"

    printf "[*] Restoring ArchGuard configs...\n"

    restore_copy \
        "$config_file" \
        "$repository"

    printf "[*] ArchGuard configs restored.\n"
}
