#!/usr/bin/env bash

set -euo pipefail

(
  cd "$( dirname "${BASH_SOURCE[0]}" )"
  docker run --rm -v $(pwd):/mnt mikluko/saxon-he transform input.xml transform.xsl
)
