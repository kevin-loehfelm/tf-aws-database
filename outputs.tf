output "endpoint" {
  description = "RDS Endpoint"
  value       = var.create_database ? module.db.db_instance_endpoint : null
}
