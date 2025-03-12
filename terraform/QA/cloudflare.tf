resource "cloudflare_record" "alb_dns" {
  zone_id = "9b4ae30f1b4b5845ba1ebad8decea1aa"  # Your Cloudflare zone ID
  name    = "pocvipul"  # Subdomain (e.g., app.yourdomain.com)
  value   = "k8s-default-teraopsp-bb5dbc417b-vipul.us-east-1.elb.amazonaws.com"  # Your ALB's DNS name
  type    = "CNAME"
  ttl     = 300
  proxied = true  # Set to false if you want direct traffic
}
