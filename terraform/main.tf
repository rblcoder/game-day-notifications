
module "sns_topic" {
  source  = "terraform-aws-modules/sns/aws"
  

  name = "gd_topic"
  
  subscriptions = [
    {
      protocol = "email"
      endpoint = "your email"
    },
    {
      protocol = "sms"
      endpoint = "your mobile number"
    }
  ]
  
  tags = {
    Project = "challenge"
    Terraform   = "true"
  }
}
