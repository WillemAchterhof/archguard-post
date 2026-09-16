#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Media Player
# ------------------------------------------------------------------------------
# /menu/modules/menu-media-player.sh

MENU_MEDIA_PLAYER="mpv"

MENU_OPTIONS[e]="menu_select_media_player|Media Player|MENU_MEDIA_PLAYER"
MENU_OPTIONS[E]="menu_select_custom|Media Player (custom)|MENU_MEDIA_PLAYER"

MENU_KEY="e"

menu_select_media_player()
{
    case "$MENU_MEDIA_PLAYER" in
        mpv)
            MENU_MEDIA_PLAYER="vlc"
            ;;
        vlc)
            MENU_MEDIA_PLAYER="haruna"
            ;;
        haruna)
            MENU_MEDIA_PLAYER="skip"
            ;;
        skip)
            MENU_MEDIA_PLAYER="mpv"
            ;;
        *)
            MENU_MEDIA_PLAYER="mpv"
            ;;
    esac
}
