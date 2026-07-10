package terraform

deny contains msg if {
    input.resource.aws_security_group.ingress[_].cidr_blocks[_] == "0.0.0.0/0"
    msg := "Public ingress (0.0.0.0/0) is not allowed."
}
