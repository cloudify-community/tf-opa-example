package terraform

import future.keywords.in
import future.keywords.if
import future.keywords.contains

import input as tfplan

deny_permissive_security_group contains msg {
  some task in tfplan["planned_values"]["root_module"]["resources"]
  task["type"] == "aws_security_group"
  task["values"]["ingress"][_]["cidr_blocks"][_] == "0.0.0.0/0"
  msg := "You have disallowed IP addresses in the ingress CIDR blocks for your security group"
}

deny contains msg {
  msg := deny_permissive_security_group
}
