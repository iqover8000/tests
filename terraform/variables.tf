variable "account_id" {
  description = "Cloudflare account ID"
  type        = string

  validation {
    condition     = length(var.account_id) == 32
    error_message = "account_id variable length must be 32, but ${length(var.account_id)} given"
  }
  nullable = false
}

variable "token" {
  description = "Cloudflare API token"
  type        = string

  validation {
    condition     = length(var.token) == 40
    error_message = "token variable length must be 40, but ${length(var.token)} given"
  }
  nullable = false
}

variable "zone_name" {
  description = "Cloudflare zone"
  type = string
  nullable = false
}

variable "records" {
  description = "Cloudflare records map"
  type = list(object({
    name          = string
    content       = string
    comment       = optional(string)
    type          = string
    ttl           = optional(number)
    proxied       = optional(bool)
    priority      = optional(number)
  }))
  default  = []
  nullable = false
}
