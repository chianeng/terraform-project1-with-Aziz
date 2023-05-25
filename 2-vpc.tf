# configuring the vpc
resource "aws_vpc" "chianeng-demo-vpc" {
    cidr_block = var.aws_vpc
    tags = {
      "Name" = "chianeng-demo-vpc"
    }
}