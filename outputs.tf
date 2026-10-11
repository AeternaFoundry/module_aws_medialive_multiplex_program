output "medialive_multiplex_programs_id" {
  description = "Map of id values across all medialive_multiplex_programs, keyed the same as var.medialive_multiplex_programs"
  value       = { for k, v in aws_medialive_multiplex_program.medialive_multiplex_programs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "medialive_multiplex_programs_multiplex_id" {
  description = "Map of multiplex_id values across all medialive_multiplex_programs, keyed the same as var.medialive_multiplex_programs"
  value       = { for k, v in aws_medialive_multiplex_program.medialive_multiplex_programs : k => v.multiplex_id if v.multiplex_id != null && length(v.multiplex_id) > 0 }
}
output "medialive_multiplex_programs_multiplex_program_settings" {
  description = "Map of multiplex_program_settings values across all medialive_multiplex_programs, keyed the same as var.medialive_multiplex_programs"
  value       = { for k, v in aws_medialive_multiplex_program.medialive_multiplex_programs : k => v.multiplex_program_settings if v.multiplex_program_settings != null && length(v.multiplex_program_settings) > 0 }
}
output "medialive_multiplex_programs_program_name" {
  description = "Map of program_name values across all medialive_multiplex_programs, keyed the same as var.medialive_multiplex_programs"
  value       = { for k, v in aws_medialive_multiplex_program.medialive_multiplex_programs : k => v.program_name if v.program_name != null && length(v.program_name) > 0 }
}
output "medialive_multiplex_programs_region" {
  description = "Map of region values across all medialive_multiplex_programs, keyed the same as var.medialive_multiplex_programs"
  value       = { for k, v in aws_medialive_multiplex_program.medialive_multiplex_programs : k => v.region if v.region != null && length(v.region) > 0 }
}

