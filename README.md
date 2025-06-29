# eks-terraform
This repo creates an EKS Cluster on aws using Terraform from scratch.# terraform-eks
A sample repository to create EKS on AWS using Terraform.

### Install AWS CLI 

As the first step, you need to install AWS CLI as we will use the AWS CLI (`aws configure`) command to connect Terraform with AWS in the next steps.

Follow the below link to Install AWS CLI.
```
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
```

### Install Terraform

Next, Install Terraform using the below link.
```
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
```

### Connect Terraform with AWS

Its very easy to connect Terraform with AWS. Run `aws configure` command and provide the AWS Security credentials as shown in the video.

### Initialize Terraform

Clone the repository and Run `terraform init`. This will intialize the terraform environment for you and download the modules, providers and other configuration required.

### Optionally review the terraform configuration

Run `terraform plan` to see the configuration it creates when executed.

### Finally, Apply terraform configuation to create EKS cluster with VPC 

`terraform apply`

## After creation of cluster apply commands like 
'kubectl apply -f deployment.yaml'
'kubectl apply -f service.yaml'

## To show nodes and get external ip address 
'kubectl get nodes'
'kubectl get svc' 

How to avoide errors for seamless deployment of pods 
1) After cluster creation, the kubectl get nodes willnot run .. To run smoothly You need to go to AWS console - EKS cluster - Access - Add permissions - add EKSClusterADminPolicy and attach it to it .
2) If your control plane instance and eks cluster is in different regions errors will occure while creation of cluster .. you need to attach aws-auth as Configmap for that so keet everything in same region.
3) Always check the AWS Providers versions are compatible with terraform modules otherwise error will occure after you type terraform init on console.
