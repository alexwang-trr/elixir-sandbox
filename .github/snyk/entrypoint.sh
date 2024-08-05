#!/bin/bash
set -eux




# Check if SNYK_TOKEN is set
if [ -z "${SNYK_TOKEN}" ]; then
  echo "Error: SNYK_TOKEN environment variable is not set."
  exit 1
fi


# set SYNK Token
export SNYK_TOKEN="${SNYK_TOKEN}"

# Run the snyk command with the remaining arguments
snyk test --json > snyk-report.json

