resource "aws_security_group" "kim_sg" {
    name = "${var.name}_sg"
    description = "HTTP_ICMP_SQL"
    vpc_id = aws_vpc.kim_vpc.id

    ingress = [
        {
            description = var.ssh
            from_port = var.port_ssh
            to_port = var.port_ssh
            protocol = var.pro_tcp
            cidr_blocks = [var.cidr_route]
            ipv6_cidr_blocks = [var.cidr_routev6]
            prefix_list_ids = null
            security_groups = null
            self = null
        },
        {
            description = var.http
            from_port = var.port_http
            to_port = var.port_http
            protocol = var.pro_tcp
            cidr_blocks = [var.cidr_route]
            ipv6_cidr_blocks = [var.cidr_routev6]
            prefix_list_ids = null
            security_groups = null
            self = null
        },
        {
            description = var.pro_icmp
            from_port = var.minus
            to_port = var.minus
            protocol = var.pro_icmp
            cidr_blocks = [var.cidr_route]
            ipv6_cidr_blocks = [var.cidr_routev6]
            prefix_list_ids = null
            security_groups = null
            self = null
        },
        {
            description = var.mysql
            from_port = var.port_mysql
            to_port = var.port_mysql
            protocol = var.pro_tcp
            cidr_blocks = [var.cidr_route]
            ipv6_cidr_blocks = [var.cidr_routev6]
            prefix_list_ids = null
            security_groups = null
            self = null
        }
    ]

    egress = [
        {
            description = var.pro_all
            from_port = var.port_zero
            to_port = var.port_zero
            protocol = var.minus
            cidr_blocks = [var.cidr_route]
            ipv6_cidr_blocks = [var.cidr_routev6]
            prefix_list_ids = null
            security_groups = null
            self = null
        }
    ]
}
