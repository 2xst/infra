variable "owner" {
  type = string
}

variable "repo_name" {
  type = string
}

# Filled by discover.sh (see section 6)
variable "existing_rulesets" {
  type    = map(number)
  default = {}
}
