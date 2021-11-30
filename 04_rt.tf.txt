resource "aws_route_table" "kim_rt" {
    vpc_id = aws_vpc.kim_vpc.id

    route{
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.kim_ig.id
    }
    tags = {
        "Name" = "kim-rt"
    }
}