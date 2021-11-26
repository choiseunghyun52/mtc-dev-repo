//--------------------------------------------------------------------
// Variables



//--------------------------------------------------------------------
// Modules
module "compute" {
  source  = "app.terraform.io/organization/compute/aws"
  version = "1.0.1"

  aws_region          = "us-east-1"
  public_key_material = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDdCssdi6qwXc6jtxCd/fvuiDRt3mmn7h95Jnj/d2g/4hzBSZJ5uUmtgG7OwI9l1hTAve6sW0tqoM773AZoL+S5gjq3jdXS2ysBJ/j9kNPUkQATfvK/NGGfVQTH4OIUvrHnzUHThAMdqbVJb+V/ZnrWGdrbKjfO+nKarlM7vhXOn4LDwy+najoSZgLcvPDCDZ6bjTfGptd6JL5MDduTW7y5JMiK0Z6/U40ssAfMfN1r58qwvh50Je85aEW2UxwSM2KBTUNP/UR8tO1uwBqBJ+PeQSzJRSGUoeo0mVG8EOO3zsCgtDaRRjKIMUc2TxOEktsA+bTThqi0hayYPMWROuC7 ubuntu@ip-172-31-34-113"
  public_sg           = module.networking.public_sg
  public_subnets      = module.networking.public_subnets
}

module "networking" {
  source  = "app.terraform.io/organization/networking/aws"
  version = "1.0.0"

  access_ip  = "0.0.0.0/0"
  aws_region = "us-east-1"
}