# Creation of 2 public subnets
resource "aws_subnet" "chianeng_pub_subnets" {
  count = length(var.chianeng_pub_subnets_cidr_blocks)
  vpc_id = aws_vpc.chianeng-demo-vpc.id
    cidr_block = element(var.chianeng_pub_subnets_cidr_blocks, count.index)
    tags = {
      "Name" = "chianeng_pub_subnets ${count.index + 1}"
    }

}
# Creation of 2 private subnets
resource "aws_subnet" "chianeng_pri_subnets" {
  count = length(var.chianeng_pri_subnets_cidr_blocks)
  vpc_id = aws_vpc.chianeng-demo-vpc.id
    cidr_block = element(var.chianeng_pri_subnets_cidr_blocks, count.index)
    tags = {
      "Name" = "chianeng_pri_subnets ${count.index + 1}"
    }

}