variable "elb_name" {
	description = "Name of ELB"
}
variable "elb_is_internal" {
  description = "Determines if the ELB is internal or not"
  default     = false
}
variable "elb_security_group" {
	description = "Security group for ELB"
}
variable "ssl_certificate_id" {
  description = "The ARN of the SSL Certificate in EC2"
}
variable "subnet_az1" {
  description = "The subnet for AZ1"
}
variable "subnet_az2" {
  description = "The subnet for AZ2"
}
variable "subnet_az3" {
  description = "The subnet for AZ3"
}
variable "backend_port" {
  description = "The port the service on the EC2 instances listens on"
}
variable "backend_protocol" {
 description = "The protocol the backend service speaks"
 // Possible options are
 // - http
 // - https
 // - tcp
 // - ssl (secure tcp)
}
variable "frontend_port" {
  description = "Frontend port"
}
variable "frontend_protocol" {
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
