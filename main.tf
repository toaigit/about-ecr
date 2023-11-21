provider "aws" {
  region = var.region
}

resource "aws_ecr_repository" "my_ecr_repo" {
  name = var.repo_name          # Name of the repository
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
  tags = {
   description = var.image_description 
   environment = var.app_environment
       }
}

output "repository_url" {
  description = "The URL of the created ECR repository"
  value       = aws_ecr_repository.my_ecr_repo.repository_url
}
