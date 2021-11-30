resource "aws_internet_gateway" "kim_ig" {
    vpc_id = aws_vpc.kim_vpc.id

    tags = {
        "Name" = "${var.name}-ig"
    }
}

resource "aws_route_table" "kim_rt" {
    vpc_id = aws_vpc.kim_vpc.id

    route{
        cidr_block = var.cidr_route
        gateway_id = aws_internet_gateway.kim_ig.id
    }
    tags = {
        "Name" = "kim-rt"
    }
}

resource "aws_route_table_association" "kim_igas_pub" {
    count = 2
    subnet_id = aws_subnet.kim_pub[count.index].id
    route_table_id = aws_route_table.kim_rt.id
}
