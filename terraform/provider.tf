provider "aws" {
  region = "your region"  
}

terraform {
  backend "s3" {
    bucket         = "your bucket"
    key            = "game-day-notifications/terraform.tfstate"
    region         = "your region"
    encrypt        = true
    use_lockfile   = true
  } 
}
