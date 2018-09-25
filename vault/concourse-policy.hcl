# vault policy-write policy-concourse policy.hcl
path "concourse/*" {
  capabilities =  ["create", "read", "update", "delete", "list"]
}
