#!/usr/bin/env bash
set -e

find assets resource -name "*.png" -exec optipng -o7 {} \;