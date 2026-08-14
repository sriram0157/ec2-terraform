terraform {
    backend "s3" {
    bucket       = "amazon-qt-infra"
    key          = "demo1/terraform.tfstate"
    region       = "ap-southeast-2"
    encrypt      = true
    use_lockfile = true
    }
}