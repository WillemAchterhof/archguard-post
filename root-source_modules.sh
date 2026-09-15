#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Module Loader
# ------------------------------------------------------------------------------
# /root-source_modules.sh

# Root
source "$ROOT_POST/root-variables.sh"


# Menu - Dependencies
source "$ROOT_MENU/menu-variables.sh"
source "$ROOT_MENU/menu-source_modules.sh"

# Menu - Functions
source "$ROOT_MENU/menu-input.sh"
source "$ROOT_MENU/menu-render.sh"


# Install - Dependencies
source "$ROOT_INSTALL/install-variables.sh"

# Install - Functions
source "$ROOT_INSTALL/install-desktop.sh"
