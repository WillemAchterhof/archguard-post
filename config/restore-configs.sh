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

    printf "[*] Restoring ArchGuard configs...\n"

    restore_copy \
        "$config_file" \
        "$repository"

    printf "[*] ArchGuard configs restored.\n"
}