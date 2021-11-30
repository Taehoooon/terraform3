resource "aws_internet_gateway" "kim_ig" {
    vpc_id = aws_vpc.kim_vpc.id

    tags = {
        "Name" = "kim-ig"
    }
}