resource "aws_lb_listener" "kim_alblis" {
    load_balancer_arn = aws_lb.kim_alb.arn
    port = 80
    protocol = "HTTP"

    default_action {
        type = "forward"
        target_group_arn = aws_lb_target_group.kim_albtg.arn
    }


}