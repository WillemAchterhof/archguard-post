#!/usr/bin/env bash

# ==============================================================================
# ArchGuard Post-Install — Menu Renderer
# ==============================================================================
# /menu/menu-render.sh

menu_render()
{
    clear

    printf "================================================================================\n"
    printf " ArchGuard Post-Install\n"
    printf "================================================================================\n"
    printf "\n"
    printf " Press option key to cycle through options\n"
    printf " Press Shift + option key for manual entry\n"
    printf "\n"
    printf "\n"
    printf "   [a] Desktop Environment : %s\n" "$MENU_DESKTOP_ENV"
    printf "\n"
    printf "\n"
    printf " Actions\n"
    printf " ────────────────────────────────────────────────────────────────────────────────\n"
    printf "   [y] Install    [z] Exit\n"
    printf "\n"
    printf "================================================================================\n"
}
