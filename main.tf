resource "aws_elb" "load_balancer" {
  name            = "${var.elb_name}"
  #name_prefix     = "${var.elb_name_prefix}-"
  subnets         = ["${var.elb_subnets}"]
  internal        = "${var.elb_is_internal}"
  security_groups = ["${var.elb_security_groups}"]

  listener {
    instance_port      = "${var.elb_instance_port}"
    instance_protocol  = "${var.elb_instance_protocol}"
    lb_port            = "${var.elb_lb_port}"
    lb_protocol        = "${var.elb_lb_protocol}"
    #ssl_certificate_id = "${var.elb_ssl_certificate_id}"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "${var.health_check_target}"
    interval            = 30
  }

  cross_zone_load_balancing = "${var.elb_cross_zone_load_balancing}"

  tags {
    terraformManaged = true
    Name             = "${var.elb_name}"
  }
}
