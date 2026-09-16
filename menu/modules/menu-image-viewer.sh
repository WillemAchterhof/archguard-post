#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Image Viewer
# ------------------------------------------------------------------------------
# /menu/modules/menu-image-viewer.sh

MENU_IMAGE_VIEWER="loupe"

MENU_OPTIONS[f]="menu_select_image_viewer|Image Viewer|MENU_IMAGE_VIEWER"
MENU_OPTIONS[F]="menu_select_custom|Image Viewer (custom)|MENU_IMAGE_VIEWER"

MENU_KEY="f"

menu_select_image_viewer()
{
    case "$MENU_IMAGE_VIEWER" in
        loupe)
            MENU_IMAGE_VIEWER="gwenview"
            ;;
        gwenview)
            MENU_IMAGE_VIEWER="ristretto"
            ;;
        ristretto)
            MENU_IMAGE_VIEWER="skip"
            ;;
        skip)
            MENU_IMAGE_VIEWER="loupe"
            ;;
        *)
            MENU_IMAGE_VIEWER="loupe"
            ;;
    esac
}
