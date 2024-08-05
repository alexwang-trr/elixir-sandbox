#!/bin/bash
set -e




# Check if SNYK_TOKEN is set
if [ -z "${SNYK_TOKEN}" ]; then
  echo "Error: SNYK_TOKEN environment variable is not set."
  exit 1
fi


# set SYNK Token
export SNYK_TOKEN="${SNYK_TOKEN}"

# Remove the first argument (command) from the list
shift

# Run the snyk command with the remaining arguments
snyk test --json > snyk-report.json

# Optionally set the output path as an environment variable
echo "snyk-report-path=snyk-report.json" >> $GITHUB_ENV