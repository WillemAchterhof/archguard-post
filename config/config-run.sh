#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Config Module Loader
# ------------------------------------------------------------------------------
# /config/config-run.sh


# Variables
CONFIG_USBGUARD="$ROOT_CONFIG/usbguard"

# Module Entry Points
source "$CONFIG_USBGUARD/config-usbguard.sh"

# Run

configure_post_install()
{
    config_usbguard
}