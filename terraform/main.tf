resource "random_id" "sko_bucket" {
  byte_length = 8
}

resource "aws_s3_bucket" "sko_bucket" {
  bucket = "sysdig-sko-bucket-${random_id.sko_bucket.hex}"
}



/*
ToDo: Team needs to make changes to the check before implementing this violation.
resource "aws_security_group" "sko_compliance_violation" {
  vpc_id      = module.vpc.vpc_id
  name = "sko_compliance_violation"
  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  tags = {
    Name = "sko_compliance_violation"
  }
}
*/
