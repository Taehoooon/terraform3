resource "aws_db_instance" "kim_mydb" {
    allocated_storage = 20
    storage_type = "gp2"
    engine = "mysql"
    engine_version = "8.0"
    instance_class = "db.t2.micro"
    name = "mydb"
    identifier = "mydb"
    username = "admin"
    password = "!myself153"
    parameter_group_name = "default.mysql8.0"
    availability_zone = "ap-northeast-2a"
    db_subnet_group_name = aws_db_subnet_group.kim_dbsg.id
    vpc_security_group_ids = [aws_security_group.kim_sg.id]
    skip_final_snapshot = true
    tags = {
        "Name" = "kim-db"
    }
}

resource "aws_db_subnet_group" "kim_dbsg" {
    name = "kim-dbsg"
    subnet_ids = [aws_subnet.kim_pridba.id,aws_subnet.kim_pridbc.id]
}