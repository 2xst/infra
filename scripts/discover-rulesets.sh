#!/usr/bin/env bash

: "${TF_VAR_owner:?TF_VAR_owner must be set}"
: "${TF_VAR_repo_name:?TF_VAR_repo_name must be set}"

set -euo pipefail
gh api "repos/${TF_VAR_owner}/${TF_VAR_repo_name}/rulesets" \
  --jq '{existing_rulesets: (map({(.name): .id}) | add // {})}'
