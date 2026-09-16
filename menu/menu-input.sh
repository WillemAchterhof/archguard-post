#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Menu Input
# ------------------------------------------------------------------------------
# /menu/menu-input.sh

menu_handle_input()
{
    local option="$1"
    local menu_option
    local definition
    local function
    local description
    local argument

    [[ -n "$option" ]] || return

    for menu_option in "${MENU_ORDER[@]}"; do
        if [[ "$option" == "$menu_option" || "$option" == "${menu_option^^}" ]]; then
            definition="${MENU_OPTIONS["$option"]:-}"
            continue
        fi
    done

    [[ -n "$definition" ]] || return

    IFS='|' read -r function description argument <<< "$definition"

    if [[ -n "$argument" ]]; then
        "$function" "$argument"
    else
        "$function"
    fi
}