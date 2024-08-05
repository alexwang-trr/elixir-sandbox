#!/bin/bash
set -e  # Exit on error
set -u  # Treat unset variables as an error
set -o pipefail  # Catch errors in pipelines

# snyk test --json > snyk-report.json || true
snyk test --org=security-sandbox --json > snyk-test-report.json || true

snyk monitor --org=security-sandbox --json > snyk-monitor-report.json || true

# Optionally set the output path as an environment variable
echo "snyk-report-path=snyk-report.json" >> $GITHUB_OUTPUT