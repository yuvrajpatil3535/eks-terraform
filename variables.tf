variable "kubernetes_version" {
  default     = "1.27" 
  description = "Kubernetes version to use in the EKS cluster"
}

variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "CIDR range for the VPC"
}

variable "aws_region" {
  default     = "us-west-1"
  description = "AWS region to deploy resources in"
}
