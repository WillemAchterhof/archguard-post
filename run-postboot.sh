#!/usr/bin/env bash

set -Eeuo pipefail

# ------------------------------------------------------------------------------
# Original login user
# ------------------------------------------------------------------------------

if [[ $EUID -ne 0 ]]; then
    export AG_USER="$USER"
    export AG_HOME="$HOME"

    exec sudo "$0" "$@"
fi

AG_USER="${AG_USER:-${SUDO_USER:-root}}"
AG_HOME="${AG_HOME:-$(getent passwd "$AG_USER" | cut -d: -f6)}"

export AG_USER AG_HOME

printf '[*] User: %s\n' "$AG_USER"
printf '[*] Home: %s\n' "$AG_HOME"

export POSTBOOT_ROOT="/opt/archguard"

AG_WIFI_ENV="$POSTBOOT_ROOT/config/base/wifi.env"
POST_INSTALL="$POSTBOOT_ROOT/post_install"
POST_INSTALL_URL="https://github.com/WillemAchterhof/archguard-post.git"

# ------------------------------------------------------------------------------
# Internet
# ------------------------------------------------------------------------------

check_internet()
{
    timeout 5 ping -c 1 -W 2 1.1.1.1 >/dev/null 2>&1
}

connectivity()
{
    # Already connected
    if check_internet; then
        return 0
    fi

    printf "[!] No internet connection detected.\n"

    # Try saved Wi-Fi
    if [[ -f "$AG_WIFI_ENV" ]]; then
        printf "[*] Trying saved Wi-Fi configuration...\n"

        # shellcheck disable=SC1090
        source "$AG_WIFI_ENV"

        if [[ -n "${AG_WIFI_SSID:-}" && -n "${AG_WIFI_PASSWORD:-}" ]]; then
            nmcli device wifi connect \
                "$AG_WIFI_SSID" \
                password "$AG_WIFI_PASSWORD" >/dev/null 2>&1

            sleep 3
        fi

        unset AG_WIFI_PASSWORD
    fi

    # Check again
    if check_internet; then
        return 0
    fi

    printf "\n"
    printf "[!] Unable to establish an internet connection.\n"
    printf "[!] Use nmcli to connect to a network or plug in a cable.\n"

    exit 1
}

# ------------------------------------------------------------------------------
# Post-Install
# ------------------------------------------------------------------------------

connectivity

printf "[*] Downloading ArchGuard Post-Install...\n"

git clone \
    "$POST_INSTALL_URL" \
    "$POST_INSTALL"

chmod +x "$POST_INSTALL/root-run.sh"

printf "[*] Starting ArchGuard Post-Install...\n"

exec "$POST_INSTALL/root-run.sh"
