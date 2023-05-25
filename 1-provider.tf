# Configuring the provider = AWS and region + aws profile
provider "aws" {
    region = var.aws_region
    profile = "default"
}