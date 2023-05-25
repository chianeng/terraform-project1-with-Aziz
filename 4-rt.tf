# creating pub-rt and associating to internet gateway 
resource "aws_route_table" "chianeng-pub-rt" {
    vpc_id = aws_vpc.chianeng-demo-vpc.id
route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.chianeng-vpc-igw.id
    }
    tags = {
     "Name" = "chianeng-pub-rt" 
     }
}