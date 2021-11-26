resource "aws_autoscaling_attachment" "kim_asatt" {
    autoscaling_group_name = aws_autoscaling_group.kim_atsg.id
    alb_target_group_arn = aws_lb_target_group.kim_albtg.arn
} 