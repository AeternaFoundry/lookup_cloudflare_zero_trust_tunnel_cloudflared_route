data "cloudflare_zero_trust_tunnel_cloudflared_route" "zero_trust_tunnel_cloudflared_route_lookup" {
  for_each = var.zero_trust_tunnel_cloudflared_route_lookup

  account_id = each.value.account_id
  filter     = each.value.filter
  route_id   = each.value.route_id
}

