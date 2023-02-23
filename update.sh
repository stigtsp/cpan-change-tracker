#!/usr/bin/env bash


set -eux -o pipefail
export TZ=UTC
START_DATE=$(date --iso)
START=$(date -Iseconds)
./mirror-cpan.sh
./update-hashes.sh
STOP=$(date -Iseconds)
git commit -m "Updated sha256sums $START_DATE (start=$START stop=$STOP)" sha256sums
git push
