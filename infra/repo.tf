resource "github_repository" "this" {
  allow_auto_merge            = false
  allow_forking               = true
  allow_merge_commit          = true
  allow_rebase_merge          = true
  allow_squash_merge          = true
  allow_update_branch         = false
  archive_on_destroy          = true
  auto_init                   = false
  delete_branch_on_merge      = false
  description                 = "test description"
  fork                        = "false"
  gitignore_template          = null
  has_discussions             = false
  has_issues                  = true
  has_projects                = true
  has_wiki                    = false
  homepage_url                = ""
  name                        = "infra"
  topics                      = ["testtopic"]
  visibility                  = "public"
  web_commit_signoff_required = false

  lifecycle {
    prevent_destroy = true
  }
}
