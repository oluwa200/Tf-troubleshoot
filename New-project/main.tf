# create an ec2 instance
resource "aws_s3_bucket" "crosswicks01022025" {
  bucket = "semepkoji"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


# create an ec2
resource "aws_instance" "web" {
  ami           = "ami-0b4624933067d393a"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}