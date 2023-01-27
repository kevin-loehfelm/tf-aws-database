variable "enable_database" {
  description = "Enable creation of RDS database"
  type        = bool
  default     = false
}

variable "label" {
  description = "Resource label"
  type        = string
  default     = "demo"
}

variable "skip_final_snapshot" {
  description = "Skip final snapshot when removing RDS instance(s)"
  type        = bool
  default     = true
}