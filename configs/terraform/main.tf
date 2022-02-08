provider "aws" {
    version = "~> 2.0"
    region = "sa-east-1"
}

resource "aws_instance" "dev" {
    count = 3
    ami = "ami-0fb653ca2d3203ac1"
    instance_type = "t2.micro"
    key_name = "id_bionic"  
    tags = {
      "Name" = "dev${count.index}"
    }
}