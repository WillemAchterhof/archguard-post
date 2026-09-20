#!/usr/bin/env bash
# ==============================================================================
#  Arch Secure Installer V2.6 — TPM Enrollment
# ==============================================================================
# /config/tpm/tpm_enroll.sh

set -Eeuo pipefail

readonly PCRS_TPM_AG="0+1+2+4+5+7+12"
readonly PUBKEY_TPM_AG="/etc/systemd/tpm2-pcr-public-key-initrd.pem"

ag_log_tpm()
{
    printf '[ArchGuard TPM] %s\n' "$*"
}

get_luks_device()
{
    local device

    device="$(cryptsetup status cryptroot 2>/dev/null \
        | awk '/device:/ {print $2; exit}')"

    [[ -n "$device" ]] \
        || {
            ag_log_tpm "ERROR: Unable to determine LUKS device for cryptroot"
            return 1
        }

    printf '%s\n' "$device"
}

ag_finish-tpm()
{
    local luks_device

    ag_log_tpm "Starting TPM2 enrollment"

    [[ -f "$PUBKEY_TPM_AG" ]] \
        || {
            ag_log_tpm "ERROR: PCR signing public key not found: $PUBKEY_TPM_AG"
            return 1
        }

    luks_device="$(ag_get_luks_device)"

    ag_log_tpm "LUKS device: $luks_device"
    ag_log_tpm "Raw PCR policy: $PCRS_TPM_AG"
    ag_log_tpm "Signed PCR policy (UKI integrity): $PUBKEY_TPM_AG"
    ag_log_tpm "Enrolling TPM2 with mandatory PIN"
    ag_log_tpm "You will be prompted for the current LUKS passphrase, then the TPM PIN"

    systemd-cryptenroll \
        --tpm2-device=auto \
        --tpm2-with-pin=yes \
        --tpm2-pcrs="$PCRS_TPM_AG" \
        --tpm2-public-key="$PUBKEY_TPM_AG" \
        --tpm2-public-key-pcrs=11 \
        "$luks_device"

    ag_log_tpm "TPM2 enrollment completed"
}