resource "aws_vpc" "myterraformVPC" {
  cidr_block       = "10.100.0.0/20"
  instance_tenancy = "default"

  tags = {
    Name        = "myterraform-vpc"
    Environment = "myterraform-Test"
    Project     = "myterraform-project"
  }
}

resource "aws_internet_gateway" "myterraformVPC-igw" {
  vpc_id = aws_vpc.myterraformVPC.id

  tags = {
    Name        = "myterraform-vpc-igw"
    Environment = "myterraform-Test"
    Project     = "myterraform-project"
  }
}

resource "aws_subnet" "myterraformVPC-subnet" {
  vpc_id     = aws_vpc.myterraformVPC.id
  cidr_block = "10.100.1.0/24"

  tags = {
    Name        = "myterraform-vpc-subnet"
    Environment = "myterraform-Test"
    Project     = "myterraform-project"
  }
}