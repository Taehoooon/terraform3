resource "aws_eip" "kim_ngw_ip" {
    vpc = true
}

resource "aws_nat_gateway" "kim_ngw" {
    allocation_id = aws_eip.kim_ngw_ip.id
    subnet_id = aws_subnet.kim_pub[0].id
    tags = {
        "Name" = "${var.name}-ngw"
    }
}

resource "aws_route_table" "kim_ngwrt" {
    vpc_id = aws_vpc.kim_vpc.id

    route {
        cidr_block = var.cidr_route
        gateway_id = aws_nat_gateway.kim_ngw.id
    }
    tags = {
        "Name" = "${var.name}-ngwrt"
    }
}

resource "aws_route_table_association" "kim_ngwass_pri" {
    count = length(var.pri_sub)
    subnet_id = aws_subnet.kim_pri[count.index].id
    route_table_id = aws_route_table.kim_ngwrt.id
}

resource "aws_route_table_association" "kim_ngwass_pridb" {
    count = length(var.pri_subdb)
    subnet_id = aws_subnet.kim_pridb[count.index].id
    route_table_id = aws_route_table.kim_ngwrt.id
}

