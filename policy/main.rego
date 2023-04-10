package terraform

import future.keywords.contains

deny contains msg {
  msg := deny_permissive_security_group
}

allow {
  not deny
}
