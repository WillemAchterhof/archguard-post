#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Config Module Loader
# ------------------------------------------------------------------------------
# /config/config-run.sh

source "$ROOT_CONFIG/config-usbguard.sh"

# Run

configure_post_install()
{
    config_usbguard
}