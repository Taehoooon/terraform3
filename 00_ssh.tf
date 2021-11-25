resource "aws_key_pair" "kim_key" {
    key_name = "kim5_key"
    public_key = file("../../.ssh/kim-key.pub")
}