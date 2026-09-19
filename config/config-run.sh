#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Config Module Loader
# ------------------------------------------------------------------------------
# /config/config-run.sh


# Variables
CONFIG_ROOT="$ROOT_POST/config"
CONFIG_MODULES="$CONFIG_ROOT/modules"


# Module Entry Points
source "$CONFIG_MODULES/usbguard.sh"


# Run

configure_post_install()
{
    usbguard_configure
}