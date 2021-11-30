resource "aws_lb_target_group" "kim_albtg" {
    name = "${var.name}-albtg"
    port = var.port_http
    protocol = var.HTTP
    vpc_id = aws_vpc.kim_vpc.id
    
    health_check {
        enabled = true
        healthy_threshold = 3
        interval = 5
        matcher = "200"
        path = var.health_path
        port = "traffic-port"
        protocol = var.HTTP
        timeout = 2
        unhealthy_threshold = 2
    }
}