#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Hypervisor
# ------------------------------------------------------------------------------
# /menu/modules/menu-hypervisor.sh

MENU_HYPERVISOR="kvm"

MENU_OPTIONS[g]="menu_select_hypervisor|Hypervisor|MENU_HYPERVISOR"
MENU_OPTIONS[G]="menu_select_custom|Hypervisor (custom)|MENU_HYPERVISOR"

MENU_KEY="g"

menu_select_hypervisor()
{
    case "$MENU_HYPERVISOR" in
        kvm)
            MENU_HYPERVISOR="virtualbox"
            ;;
        virtualbox)
            MENU_HYPERVISOR="skip"
            ;;
        skip)
            MENU_HYPERVISOR="kvm"
            ;;
        *)
            MENU_HYPERVISOR="kvm"
            ;;
    esac
}
