resource "aws_lb" "kim_alb" {
    name = "kim-alb"
    internal = false
    load_balancer_type = "application"
    security_groups = [aws_security_group.kim_sg.id]
    subnets = [aws_subnet.kim_puba.id, aws_subnet.kim_pubc.id]
    tags = {
        "Name" = "kim-alb"
    }
}