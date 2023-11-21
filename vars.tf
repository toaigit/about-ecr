variable "aws_region" {
  description = "AWS region where the resources are provisioned."
  default        = "us-west-2"
}

variable "repo_name" {
  description = "Name of your new container repo"
  default        = "my-lamp-docker"
}

variable "app_environment" {
  description = "The application environment that image represents."
  default        = "DEV"
}

variable "image_description" {
  description = "A meaningful description for the image."
  default       = "Lamp tech stack"
}
