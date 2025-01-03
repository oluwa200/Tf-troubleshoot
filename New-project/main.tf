# create an ec2 instance
resource "aws_s3_bucket" "awoludaho012689" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


# create an ec2
resource "aws_ec2" "name" {
  resource "aws_instance" "web" {
  ami           = "01816d07b1128cd2d"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
}