import {
  to = github_repository.this
  id = var.repo_name
}

import {
  for_each = var.existing_rulesets
  to       = github_repository_ruleset.this[each.key]
  id       = "${var.repo_name}:${each.value}"
}
