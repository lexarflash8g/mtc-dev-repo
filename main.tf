//--------------------------------------------------------------------
// Variables



//--------------------------------------------------------------------
// Modules
module "compute_1" {
  source  = "app.terraform.io/mtc-terraform99/compute-1/aws"
  version = "1.3.0"

  aws_access_key_id = var.aws_access_key_id
  aws_region = "us-east-2"
  aws_secret_access_key = var.aws_secret_access_key
  public_key_material = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCgMdFjL6jX4ix+o0dzNXU6cNeaHok0DMjgTZaH+v10xNqmWe1Qe+lDDndzzlSwcVPYb1X6rKg89uXYHpc+ZLKzPliL4Po6uGYr+XaTsvEgKytoLZbtNQRDuLDjn9dR9MQZH8TKP+vson1ssmGy/tK/zo+wL1354YwRuYtOmX7xB7O4x8EixFJXzHrjNRzxCVyl/G+ipip4VphDVO85pxp7UMnXoNeZYjnGeaeFj8hSK0K/7co+Gi/2J7C6H74B4pkvSEtEFEQmWMgaRolweoq9nrwaAR6sHZLEuwThoLs3qYC5VdPoqf3x/0Ba/6bfhuXcj5UVA+CBWrGA+EG5Ti7z ubuntu@ip-172-31-23-195"
  public_sg = "${module.networking.public_sg}"
  public_subnets = "${module.networking.public_subnets}"
}

module "networking" {
  source  = "app.terraform.io/mtc-terraform99/networking/aws"
  version = "1.4.0"
  aws_access_key_id = var.aws_access_key_id
  aws_region = "us-east-2"
  aws_secret_access_key = var.aws_secret_access_key
  access_ip = "0.0.0.0/0"
}