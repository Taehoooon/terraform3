resource "aws_lb_target_group_attachment" "kim_albtgatt" {
    target_group_arn = aws_lb_target_group.kim_albtg.arn
    target_id = aws_instance.kim_web.id
    port = 80
}