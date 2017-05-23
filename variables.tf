variable "elb_name" {
	description = "Name of ELB"
}
#variable "elb_name_prefix" {
#	description = "Name of ELB"
#}
variable "elb_is_internal" {
  description = "Determines if the ELB is internal or not"
  default     = "true"
}
variable "elb_security_groups" {
	description = "Security groups for ELB"
  type        = "list"
}
variable "elb_subnets" {
  description = "Subnets"
  type        = "list"
}
variable "elb_instance_port" {
  description = "The port the service on the EC2 instances listens on"
}
variable "elb_instance_protocol" {
 description = "The protocol the backend service speaks"
 // Possible options are
 // - http
 // - https
 // - tcp
 // - ssl (secure tcp)
}
variable "elb_lb_port" {
  description = "Frontend port"
}
variable "elb_lb_protocol" {
  description = "Frontend protocol"
}
variable "health_check_target" {
  description = "The URL the ELB should use for health checks"
  // This is primarily used with `http` or `https` backend protocols
  // The format is like `HTTPS:443/health`
}
variable "elb_cross_zone_load_balancing" {
  description = "Enable cross-zone load balancing"
  default     = "true"
}
#variable "elb_ssl_certificate_id" {
#  description = "The ARN of the SSL Certificate in EC2"
#}
