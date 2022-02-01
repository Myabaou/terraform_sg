# Terraform Module作成用 Makefile

```sh
make create-module _MODULE=[モジュール名]
```

`モジュール名.tf` と `モジュール名`のディレクトリが作成される。

## モジュール削除
```sh
make delete-module _MODULE=[モジュール名]
```

---

## SG ルールインポート

- Import
```sh
terraform import module.sg_rules.aws_security_group_rule.this sg-XXXXX_ingress_tcp_443_443_8.8.8.8/32
```

```
module.sg_rules.aws_security_group_rule.this: Importing from ID "sg-XXXXX_ingress_tcp_443_443_8.8.8.8/32"...
module.sg_rules.aws_security_group_rule.this: Import prepared!
  Prepared aws_security_group_rule for import
module.sg_rules.aws_security_group_rule.this: Refreshing state... [id=sg-XXXXX_ingress_tcp_443_443_8.8.8.8/32]

Import successful!

The resources that were imported are shown above. These resources are now in
your Terraform state and will henceforth be managed by Terraform.
```

- 確認
```sh
terraform state show module.sg_rules.aws_security_group_rule.this
```
```
# module.sg_rules.aws_security_group_rule.this:
resource "aws_security_group_rule" "this" {
    cidr_blocks       = [
        "8.8.8.8/32",
    ]
    description       = "Google DNS"
    from_port         = 443
    id                = "sgrule-2516492603"
    ipv6_cidr_blocks  = []
    prefix_list_ids   = []
    protocol          = "tcp"
    security_group_id = "sg-XXXXX"
    self              = false
    to_port           = 443
    type              = "ingress"
}
```