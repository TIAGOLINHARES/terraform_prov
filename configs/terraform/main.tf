provider "aws" {
    
    region = "us-east-1"
}

resource "aws_instance" "dev" {
    count = 3
    ami = "ami-04505e74c0741db8d"
    instance_type = "t2.micro"
    key_name = "id_bionic"  
    tags = {
      Name = "dev${count.index}"
    }
    vpc_security_group_ids = ["sg-0a662662a75599693"]
}


resource "aws_s3_bucket" "dev4s" {
  bucket = "bucket-dev4s"
  acl    = "private"

  tags = {
    Name        = "dev4s"
    
  }
}

resource "aws_instance" "dev4" {
    ami = "ami-04505e74c0741db8d"
    instance_type = "t2.micro"
    key_name = "id_bionic"  
    tags = {
      Name = "dev4"
    }
    vpc_security_group_ids = ["sg-0a662662a75599693"]
    depends_on = [aws_s3_bucket.dev4s]
}

resource "aws_instance" "dev5" {
    ami = "ami-04505e74c0741db8d"
    instance_type = "t2.micro"
    key_name = "id_bionic"  
    tags = {
      Name = "dev5"
    }
    vpc_security_group_ids = ["sg-0a662662a75599693"]
}
teste