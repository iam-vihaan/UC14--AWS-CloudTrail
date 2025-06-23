resource "aws_cloudwatch_metric_alarm" "login_alarm" {
  alarm_name          = var.alarm_name
  alarm_description   = var.alarm_description
  metric_name         = var.metric_name
  namespace           = var.metric_namespace
  statistic           = var.statistic
  period              = var.period
  evaluation_periods  = var.evaluation_periods
  threshold           = var.threshold
  comparison_operator = var.comparison_operator
  alarm_actions       = [var.sns_topic_arn]

  treat_missing_data = "notBreaching"

  tags = {
    Name        = var.alarm_name
    Environment = var.environment
  }
}
