# variable for aws region = us-east-1
variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region"
}
# variable for vpc cidr = 20.30.0.0/16
variable "aws_vpc" {
    type = string
    default = "20.30.0.0/16"
    description = "AWS vpc"
  
}
# variable for creating 2-public and 2-private subnets
variable "chianeng_pub_subnets" {
  type        = number
  default     = 2
  description = "Number of public subnets."
}

variable "chianeng_pri_subnets" {
  description = "Number of private subnets."
  type        = number
  default     = 2
}

variable "chianeng_pub_subnets_cidr_blocks" {
  type        = list(string)
  default     = ["20.30.0.0/18","20.30.64.0/18"]
description = "Available cidr blocks for chianeng_pub_subnets."
}

variable "chianeng_pri_subnets_cidr_blocks" {
  description = "Available cidr blocks for chianeng_pri_subnets."
  type        = list(string)
  default     = ["20.30.128.0/18","20.30.192.0/18"]
}


