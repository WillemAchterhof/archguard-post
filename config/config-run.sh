#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Config Module Loader
# ------------------------------------------------------------------------------
# /config/config-run.sh
# ------------------------------------------------------------------------------

source "$ROOT_CONFIG/config-usbguard.sh"
source "$ROOT_CONFIG/config-toolkit.sh"
source "$ROOT_CONFIG/restore-configs.sh"

# ------------------------------------------------------------------------------
# Run
# ------------------------------------------------------------------------------

configure_desktop()
{
    config_usbguard
    # config_toolkit
    # restore_configs

    local source="/opt/archguard/backup/ArchGuard.png"
    local destination="$HOME/Pictures/BackGround"
    
    mkdir -p -- "$destination"
    
    if [[ -f "$source" ]]; then
        cp "$source" "$destination/ArchGuard.png"
    fi

    systemctl enable sddm.service
    systemctl enable libvirtd.service
}
