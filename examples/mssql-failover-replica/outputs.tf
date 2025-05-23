/**
 * Copyright 2024 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

output "project_id" {
  value = var.project_id
}

# instance 1

output "instance_name1" {
  description = "The name for Cloud SQL instance"
  value       = module.mssql1.instance_name
}

output "mssql_connection" {
  value       = module.mssql1.instance_connection_name
  description = "The connection name of the master instance to be used in connection strings"
}

output "public_ip_address" {
  value       = module.mssql1.instance_first_ip_address
  description = "Public ip address"
}

# instance 2

output "instance_name2" {
  description = "The name for Cloud SQL instance 2"
  value       = module.mssql2.instance_name
}

output "master_instance_name2" {
  value     = module.mssql2.primary.master_instance_name
  sensitive = true
}
