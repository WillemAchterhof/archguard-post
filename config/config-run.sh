#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Config Module Loader
# ------------------------------------------------------------------------------
# /config/config-run.sh


# Variables
CONFIG_USBGUARD="$POSTBOOT_ROOT/config/usbguard"

# Module Entry Points
"$CONFIG_USBGUARD/config-usbguard.sh"

# Run

configure_post_install()
{
    config_usbguard
}