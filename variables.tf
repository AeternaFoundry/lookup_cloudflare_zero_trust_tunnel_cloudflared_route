variable "zero_trust_tunnel_cloudflared_route_lookup" {
  description = <<EOT
Map of zero_trust_tunnel_cloudflared_route_lookup, attributes below
Optional:
    - account_id
    - filter
    - route_id
EOT

  type = map(object({
    account_id = optional(string)
    filter = optional(object({
      comment            = optional(string)
      existed_at         = optional(string)
      is_deleted         = optional(bool)
      network_subset     = optional(string)
      network_superset   = optional(string)
      tun_types          = optional(list(string))
      tunnel_id          = optional(string)
      virtual_network_id = optional(string)
    }))
    route_id = optional(string)
  }))
}

