#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Menu Input
# ------------------------------------------------------------------------------
# /menu/menu-input.sh

menu_handle_input()
{
    local option="$1"
    local definition
    local function
    local argument

    definition="${MENU_OPTIONS[$option]:-}"

    [[ -n "$definition" ]] || {
        printf "Invalid selection.\n"
        return
    }

    IFS='|' read -r function _ argument <<< "$definition"

    if [[ -n "$argument" ]]; then
        "$function" "$argument"
    else
        "$function"
    fi
}
