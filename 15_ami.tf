resource "aws_ami_from_instance" "kim_ami" {
    name = "${var.name}-ami"
    source_instance_id = aws_instance.kim_web.id
    depends_on = [
        aws_instance.kim_web
    ]
}