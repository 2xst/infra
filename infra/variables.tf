variable "owner" {
  type = string
}

variable "repo_name" {
  type = string
}

variable "existing_rulesets" {
  type    = map(number)
  default = {}
}
