#!/usr/bin/env bash

set -euo pipefail

(
  cd "$( dirname "${BASH_SOURCE[0]}" )"
  docker run --rm -v "$(pwd):/data" -w /data mikluko/saxon-he:latest transform input.xml transform.xsl
)
