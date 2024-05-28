provider "aws" {
  region     = "eu-east-1"
  access_key = "AKIAYLLURMEU7DXLLG7B"
  secret_key = "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"

}


resource "aws_instance" "myec2" {
  ami           = "ami-0bb84b8ffd87024d8"
  instance_type = "t2.micro"

}
