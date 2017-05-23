output "elb_id" {
  value = "${aws_elb.load_balancer.id}"
}
output "elb_name" {
  value = "${aws_elb.load_balancer.name}"
}
output "elb_dns_name" {
  value = "${aws_elb.load_balancer.dns_name}"
}
