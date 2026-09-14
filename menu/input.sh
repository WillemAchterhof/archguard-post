#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Menu Input
# ------------------------------------------------------------------------------
# /menu/input.sh

handle_input()
{
    case "$1" in
        a) select_environment ;;
        A) select_environment_custom ;;
        *) printf "Invalid selection.\n" ;;
    esac
}
