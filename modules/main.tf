module "random_name" {
  source = "github.com/achuchulev/terraform-aws-ec2"
  ami = "ami-0b9ecb12083282d75"
  instance_type = "t3.micro"
  subnet_id = "subnet-01299b7be81c72a58"
  public_key = "atanas"
  vpc_security_group_ids = ["sg-0c1650b4f6afad68b"]
}
