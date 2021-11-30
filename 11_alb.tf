resource "aws_lb" "kim_alb" {
    name = "${var.name}-alb"
    internal = false
    load_balancer_type = var.lb_type_app
    security_groups = [aws_security_group.kim_sg.id]
    subnets = [aws_subnet.kim_pub[0].id, aws_subnet.kim_pub[1].id]
    tags = {
        "Name" = "${var.name}-alb"
    }
}

output "dns_name" {
    value = aws_lb.kim_alb.dns_name
}