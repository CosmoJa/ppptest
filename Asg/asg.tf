
resource "aws_autoscaling_group" "main_asg" {
  availability_zones = ["us-east-1a"]
  desired_capacity   = 3
  max_size           = 5
  min_size           = 1

  launch_template {
    id     = var.main_template
    version = "$Latest"
  }
}