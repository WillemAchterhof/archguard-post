#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Menu Module Loader
# ------------------------------------------------------------------------------
# /menu/menu-run.sh


# Variables
MENU_MODULES="$ROOT_MENU/modules"

# Menu Dependencies
declare -A MENU_OPTIONS
MENU_ORDER=(a) # b c d e f g h i

source "$MENU_MODULES/menu-select_custom.sh"
source "$MENU_MODULES/menu-environment.sh"

# Menu Handling
source "$ROOT_MENU/menu-input.sh"
source "$ROOT_MENU/menu-render.sh"
