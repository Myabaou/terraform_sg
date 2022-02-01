provider "aws" {
  profile = var.aws_profile
  region  = var.region
    default_tags {
    tags = {
      Environment    = var.env
      Owner          = var.owner
      CmBillingGroup = "${var.project}/${var.env}"
      Terraform      = "True"
    }
  }
}

provider "aws" {
  profile = var.aws_profile
  region  = "us-east-1"
  alias   = "us-east"
    default_tags {
    tags = {
      Environment    = var.env
      Owner          = var.owner
      CmBillingGroup = "${var.project}/${var.env}"
      Terraform      = "True"
    }
  }

}
