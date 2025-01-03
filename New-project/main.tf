# create an ec2 instance
resource "aws_s3_bucket" "withgodeverythingispossible012689" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


# create an ec2
resource "aws_instance" "web" {
  ami           = "ami-0e2c8caa4b6378d8c"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}