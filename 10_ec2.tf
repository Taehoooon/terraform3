data "aws_ami" "amzn" {
    most_recent = true

    filter {
      name   = "name"
     values = ["amzn2-ami-hvm-*-x86_64-gp2"]
     }

     filter {
     name   = "virtualization-type"
     values = ["hvm"]
    }

     owners = ["amazon"]
}

resource "aws_instance" "kim_web" {
    ami = data.aws_ami.amzn.id
    instance_type = var.t2m
    key_name = var.key
    vpc_security_group_ids = [aws_security_group.kim_sg.id]
    availability_zone = "${var.region}${var.ava_zone[0]}"
    private_ip = var.pri_web_ip # 필요시 변경
    subnet_id = aws_subnet.kim_pub[0].id
    user_data = file("./install.sh")

    tags = {
        "Name" = "${var.name}-web"
    }
}

resource "aws_eip" "kim_web_ip" {
    vpc = true
    instance = aws_instance.kim_web.id
    associate_with_private_ip = var.pri_web_ip
    depends_on = [aws_internet_gateway.kim_ig]
}

output "public_ip" {
    value = aws_instance.kim_web.public_ip
}