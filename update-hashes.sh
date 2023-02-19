#!/bin/sh

find /data/CPAN/ -type f | sort | xargs sha256sum > sha256sums
