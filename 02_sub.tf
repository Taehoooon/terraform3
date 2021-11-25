# 가용영역 a의 public subent
resource "aws_subnet" "kim_puba" {
    vpc_id = aws_vpc.kim_vpc.id
    cidr_block = "10.0.0.0/24"
    availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "kim-puba"
  }
}

resource "aws_subnet" "kim_pubc" {
    vpc_id = aws_vpc.kim_vpc.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "kim-pubc"
  }
}

resource "aws_subnet" "kim_pria" {
    vpc_id = aws_vpc.kim_vpc.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "kim-pria"
  }
}

resource "aws_subnet" "kim_pric" {
    vpc_id = aws_vpc.kim_vpc.id
    cidr_block = "10.0.3.0/24"
    availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "kim-pric"
  }
}

resource "aws_subnet" "kim_pridba" {
  vpc_id = aws_vpc.kim_vpc.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "kim-pridba"
  }
}

resource "aws_subnet" "kim_pridbc" {
  vpc_id = aws_vpc.kim_vpc.id
  cidr_block = "10.0.5.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "kim-pridbc"
  }
}
