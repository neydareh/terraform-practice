# The first step to using Terraform is typically to configure the provider(s) you want to use. 
# Create an empty folder and put a file in it called main.tf that contains the following contents:
provider "aws" {
    region = "us-east-2"
}

# For each type of provider, there are many different kinds of resources that you can create, such as servers, databases, 
# and load balancers. The general syntax for creating a resource in Terraform is:
# resource "<PROVIDER>_<TYPE>" "<NAME>" {
#   [CONFIG ...]
# }

resource "aws_instance" "example" {
  ami = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
      Name = "terraform-example"
  }
}