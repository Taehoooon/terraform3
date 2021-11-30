resource "aws_route_table" "kim_ngwrt" {
    vpc_id = aws_vpc.kim_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.kim_ngw.id
    }
    tags = {
        "Name" = "kim-ngwrt"
    }
}