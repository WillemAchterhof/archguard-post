#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Module Loader
# ------------------------------------------------------------------------------
# /root-source_modules.sh

# Root
source "$POST_ROOT/root-variables.sh"


# Menu - Dependencies
source "$MENU_ROOT/menu-variables.sh"
source "$MENU_ROOT/menu-source_modules.sh"

# Menu - Functions
source "$MENU_ROOT/menu-input.sh"
source "$MENU_ROOT/menu-render.sh"


# Next One
