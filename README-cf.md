##########
# module cf
##########

- provision infrastructure for GHE using [Terraform](https://www.terraform.io) on Amazon Web Services (AWS)

###############
# pre requisites
###############

- install git
- install terraform
- AWS Key pair for Terraform provisioning or as required per EC2 Instance requirements
- AWS s3 bucket for remote terraform state file (tfstate)
- AWS Dynamo dB for tfstate table state lock 
- Liquid Studio Atlanta Management VPC
- Liquid Studio Atlanta Management Subnet

##########
# dynamodb #terraform-ticara-dev-statelock
##########

# Run the below command from the AWS CLI

aws dynamodb create-table --region us-east-2 --table-name terraform-ticara-dev-statelock --attribute-definitions AttributeName=LockID,AttributeType=S --key-schema AttributeName=LockID,KeyType=HASH --provisioned-throughput ReadCapacityUnits=20,WriteCapacityUnits=20

##########
# dynamodb #terraform-octane-ticara-dev-statelock
##########

# Run the below command from the AWS CLI

aws dynamodb create-table --region us-east-2 --table-name terraform-octane-ticara-dev-statelock --attribute-definitions AttributeName=LockID,AttributeType=S --key-schema AttributeName=LockID,KeyType=HASH --provisioned-throughput ReadCapacityUnits=20,WriteCapacityUnits=20

###########
# Packer commands to build golden image based on the need configs in packer folder for Jenkins master and slave servers

# validate packer template
packer validate ami.json 

# build ami
packer build ami.json

###########

###########
# terraform 
###########

Terraform will be used to provision AWS infrastructure and resources for Web:
#- Cloudfront
- Cloudfront


```
  ticara-lsa-dev
$ cd terraform
$ terraform get
$ terraform init -backend=true -var-file=../environments/octane-ticara-cf-dev.tfvars
$ terraform plan -var-file=../environments/octane-ticara-cf-dev.tfvars
$ terraform apply -var-file=../environments/octane-ticara-cf-dev.tfvars
```
```

```
  destroy infrastructure only when needed
$ terraform destroy
```