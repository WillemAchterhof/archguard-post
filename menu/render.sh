#!/usr/bin/env bash

# ==============================================================================
# ArchGuard Post-Install — Menu Renderer
# ==============================================================================
# /menu/render.sh

render_menu()
{
    clear

    printf "================================================================================\n"
    printf " ArchGuard Post-Install\n"
    printf "================================================================================\n\n"

    printf " Configure your system\n\n"

    printf "   [a] Desktop Environment : %s\n" "$MENU_DESKTOP_ENV"

    printf "\n"
    printf " Actions\n"
    printf " ────────────────────────────────────────────────────────────────────────────────\n"
    printf "   [y] Install    [z] Exit\n"
    printf "\n"
    printf "================================================================================\n"
    printf "\n"
    printf " Press option key to cycle\n"
    printf " Press Shift + option key for manual entry\n"
}
