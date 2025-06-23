variable "log_group_name" {
  type = string
}

variable "filter_name" {
  type        = string
  description = "The name of the CloudWatch Logs metric filter"
  default     = "console-login-filter"
}

variable "metric_namespace" {
  type        = string
  description = "The namespace for the CloudWatch metric"
  default     = "CloudTrailMetrics"
}
variable "metric_name" {
  type        = string
  description = "The name of the CloudWatch metric"
  default     = "ConsoleLoginEventCount"
}
