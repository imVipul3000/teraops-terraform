/* resource "cloudflare_record" "alb_dns" {
  zone_id = "9b4ae30f1b4b5845ba1ebad8decea1aa"  # Your Cloudflare zone ID
  name    = "staging-sandbox"  # Subdomain (e.g., app.yourdomain.com)
  value   = "dummy-poc-endpoint-via-terraform"  # Your ALB's DNS name
  type    = "CNAME"
  ttl     = 1
  proxied = true  # Set to false if you want direct traffic
} */
