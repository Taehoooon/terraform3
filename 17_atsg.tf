resource "aws_placement_group" "kim_pg" {
    name = "${var.name}-pg"
    strategy = "cluster"
}

resource "aws_autoscaling_group" "kim_atsg" {
    name = "${var.name}-atsg"
    min_size = 2
    max_size = 10
    health_check_grace_period = 60
    health_check_type = var.health_cktype_ec2
    desired_capacity = 2
    force_delete = true
    launch_configuration = aws_launch_configuration.kim_lacf.name
    #placement_group = aws_placement_group.kim_pg.id
    vpc_zone_identifier = [aws_subnet.kim_pub[0].id, aws_subnet.kim_pub[1].id]
    # 이거하며 lb에서 drain 안됨
    #target_group_arns = [aws_target_group.kim_albtg.arn]
}