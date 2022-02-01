#各環境のterraform.tfstate格納用S3の設定

# Variable
variable "aws_profile" {
  default = "aws-test-myabaou"
}

variable "project" {
  default = "sample_pj"
}

variable "env" {
  default = "example"
}

variable "region" {
  default = "us-west-2"
}

variable "owner" {
  default = "INFRA" # 実行者のオーナー情報適宜変更
}

