resource "aws_route_table_association" "kim_ngwass_pria" {
    subnet_id = aws_subnet.kim_pria.id
    route_table_id = aws_route_table.kim_ngwrt.id
}

resource "aws_route_table_association" "kim_ngwass_pric" {
    subnet_id = aws_subnet.kim_pric.id
    route_table_id = aws_route_table.kim_ngwrt.id
}

resource "aws_route_table_association" "kim_ngwass_pridba" {
    subnet_id = aws_subnet.kim_pridba.id
    route_table_id = aws_route_table.kim_ngwrt.id
}

resource "aws_route_table_association" "kim_ngwass_pridbc" {
    subnet_id = aws_subnet.kim_pridbc.id
    route_table_id = aws_route_table.kim_ngwrt.id
}