resource "aws_launch_configuration" "kim_lacf" {
    name = "kim-lacf"
    image_id = aws_ami_from_instance.kim_ami.id
    instance_type = "t2.micro"
    iam_instance_profile = "admin_role"
    security_groups = [aws_security_group.kim_sg.id]
    key_name = "kim-key"
    user_data =<<-EOF
                #!/bin/bash
                systemctl start httpd
                systemctl enable httpd
                EOF
}