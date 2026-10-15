locals {
  rulesets = {
    main-protection = {
      enforcement = "active"
    }
  }
}

resource "github_repository_ruleset" "this" {
  for_each    = local.rulesets
  repository  = github_repository.this.name
  name        = each.key
  target      = "branch"
  enforcement = each.value.enforcement

  conditions {
    ref_name {
      include = ["~DEFAULT_BRANCH"]
      exclude = []
    }
  }

  rules {
    deletion                = true
    non_fast_forward        = true
    required_linear_history = true

    pull_request {
      required_approving_review_count = 1
      dismiss_stale_reviews_on_push   = true
    }
  }
}
