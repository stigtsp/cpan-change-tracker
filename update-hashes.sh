#!/bin/sh

set -eux -o pipefail
(
    cd /data/CPAN
    find -type f | sort | xargs sha256sum
) > sha256sums
