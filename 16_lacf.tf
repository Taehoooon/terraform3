resource "aws_launch_configuration" "kim_lacf" {
    name = "kim-lacf"
    image_id = aws_ami_from_instance.kim_ami.id
    instance_type = var.t2m
    iam_instance_profile = var.admin_role
    security_groups = [aws_security_group.kim_sg.id]
    key_name = var.key
    user_data =<<-EOF
                #!/bin/bash
                systemctl start httpd
                systemctl enable httpd
                EOF
}