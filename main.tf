resource "aws_elb" "load_balancer" {
  name            = "${var.elb_name}"
  name_prefix     = "${var.elb_name_prefix}-"
  subnets         = ["${var.subnet_az1}","${var.subnet_az2}"]
  internal        = "${var.elb_is_internal}"
  security_groups = ["${var.elb_security_group}"]

  listener {
    instance_port      = "${var.backend_port}"
    instance_protocol  = "${var.backend_protocol}"
    lb_port            = "${var.frontend_port}"
    lb_protocol        = "${var.frontend_protocol}"
    ssl_certificate_id = "${var.ssl_certificate_id}"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "${var.health_check_target}"
    interval            = 30
  }

  cross_zone_load_balancing = "${var.elb_cross_zone_load_balancing}"
}
