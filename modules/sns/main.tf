
resource "aws_sns_topic" "login_alerts" {
  name = var.login_alerts_name
}

resource "aws_sns_topic_subscription" "email_sub" {
  topic_arn = aws_sns_topic.login_alerts.arn
  protocol  = "email"
  endpoint  = var.email
}
