output "log_metric_filter_name" {
  description = "The name of the CloudWatch log metric filter"
  value       = aws_cloudwatch_log_metric_filter.login_filter.name
}

output "log_metric_filter_pattern" {
  description = "The pattern used to match log events"
  value       = aws_cloudwatch_log_metric_filter.login_filter.pattern
}

output "log_metric_filter_log_group" {
  description = "The log group this filter is associated with"
  value       = aws_cloudwatch_log_metric_filter.login_filter.log_group_name
}

output "log_metric_filter_metric_name" {
  description = "The metric name used in the transformation"
  value       = aws_cloudwatch_log_metric_filter.login_filter.metric_transformation[0].name
}

output "log_metric_filter_metric_namespace" {
  description = "The namespace for the metric"
  value       = aws_cloudwatch_log_metric_filter.login_filter.metric_transformation[0].namespace
}
