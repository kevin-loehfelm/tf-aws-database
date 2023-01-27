output "label" {
  description = "RDS resource label"
  value       = var.label
}

output "endpoint" {
  description = "RDS Endpoint"
  value       = var.enable_database ? module.db.db_instance_endpoint : null
}
