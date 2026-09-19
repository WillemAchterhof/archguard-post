#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Config Module Loader
# ------------------------------------------------------------------------------
# /config/config-run.sh

source "$ROOT_CONFIG/config-usbguard.sh"

# Run

cconfigure_desktop()
{
    config_usbguard
    
    "$toolkit/archguard-toolkit.sh" --initialize
    
    copy_desktop_config_files

    systemctl enable sddm.service
    systemctl enable libvirtd.service
}