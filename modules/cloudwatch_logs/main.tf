resource "aws_cloudwatch_log_metric_filter" "login_filter" {
  name           = var.filter_name
  log_group_name = var.log_group_name
  pattern        = "{ $.eventName = \"ConsoleLogin\" }"

  metric_transformation {
    name      = var.metric_name
    namespace = var.metric_namespace
    value     = "1"
  }
}
