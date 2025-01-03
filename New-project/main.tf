# create an ec2 instance
resource "aws_s3_bucket" "laughter01022025" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


# create an ec2
resource "aws_instance" "web" {
  ami           = "ami-01816d07b1128cd2d"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}