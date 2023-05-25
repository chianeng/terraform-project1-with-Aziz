# creating chianeng-vpc-igw 
resource "aws_internet_gateway" "chianeng-vpc-igw" {
    vpc_id = aws_vpc.chianeng-demo-vpc.id
      tags = {
      "Name" = "chianeng-vpc-igw" 

  }
}