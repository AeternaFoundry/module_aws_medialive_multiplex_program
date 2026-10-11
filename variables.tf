variable "medialive_multiplex_programs" {
  description = <<EOT
Map of medialive_multiplex_programs, attributes below
Required:
    - multiplex_id
    - program_name
Optional:
    - region
    - multiplex_program_settings (block):
        - preferred_channel_pipeline (required)
        - program_number (required)
        - service_descriptor (optional, block):
            - provider_name (required)
            - service_name (required)
        - video_settings (optional, block):
            - constant_bitrate (optional)
            - statmux_settings (optional, block):
                - maximum_bitrate (optional)
                - minimum_bitrate (optional)
                - priority (optional)
EOT

  type = map(object({
    multiplex_id = string
    program_name = string
    region       = optional(string)
    multiplex_program_settings = optional(list(object({
      preferred_channel_pipeline = string
      program_number             = number
      service_descriptor = optional(list(object({
        provider_name = string
        service_name  = string
      })))
      video_settings = optional(list(object({
        constant_bitrate = optional(number)
        statmux_settings = optional(list(object({
          maximum_bitrate = optional(number)
          minimum_bitrate = optional(number)
          priority        = optional(number)
        })))
      })))
    })))
  }))
}

