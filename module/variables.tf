variable "environment" {
  type        = string
  description = "The Azure region."
}

variable "soft_delete_retention_days" {
  type        = number
  description = "Soft delete retention days"
}
