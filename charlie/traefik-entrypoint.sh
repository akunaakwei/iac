#!/bin/bash
set -e
step ca bootstrap --ca-url "${CERT_AUTH}:${CERT_AUTH_PORT}" --fingerprint "${FINGERPRINT}" --install --force
update-ca-certificates
# Just pass all commands to original entyrpoint.sh script
./entrypoint.sh "$@"