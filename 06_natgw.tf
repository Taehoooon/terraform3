resource "aws_eip" "kim_ngw_ip" {
    vpc = true
}

resource "aws_nat_gateway" "kim_gw" {
    allocation_id = aws_eip.kim_ngw_ip.id
    subnet_id = aws_subnet.kim_puba.id
    tags = {
        "Name" = "kim-ngw"
    }
}