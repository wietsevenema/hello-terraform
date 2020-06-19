provider google {
  project = var.project_id
  version = "~> 3.0"
}

variable "project_id" {
  type        = string
  description = "The Google Cloud Project ID to use"
}
