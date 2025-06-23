variable "notification_email" {
  description = "Email to receive login notifications"
  type        = string
}

variable "cloudtrail_name" {
  description = "Name of the CloudTrail trail"
  type        = string
  default     = "account-activity-trail"
}

variable "s3_bucket_name_prefix" {
  description = "Prefix for the CloudTrail S3 bucket"
  type        = string
  default     = "cloudtrail-activity-logs"
}

variable "cloudwatch_log_group_name" {
  description = "Name of the CloudWatch Log Group for CloudTrail"
  type        = string
  default     = "demo-cloudtrail-logs"
}

variable "cloudwatch_log_retention_days" {
  description = "Number of days to retain CloudWatch logs"
  type        = number
  default     = 7
}

variable "cloudtrail_role_name" {
  description = "IAM role name for CloudTrail to assume"
  type        = string
  default     = "cloudtrail-cloudwatch-role"
}

variable "cloudtrail_policy_name" {
  description = "IAM policy name for CloudTrail to write logs"
  type        = string
  default     = "cloudtrail-cloudwatch-policy"
}


variable "metric_name" {
  description = "Name of the CloudWatch metric"
  type        = string
  default     = "ConsoleLoginEventCount"
}

variable "metric_namespace" {
  description = "Namespace of the CloudWatch metric"
  type        = string
  default     = "CloudTrailMetrics"
}

variable "alarm_name" {
  description = "Name of the CloudWatch alarm"
  type        = string
  default     = "ConsoleLoginAlarm"
}

variable "alarm_description" {
  description = "Description for the CloudWatch alarm"
  type        = string
  default     = "Triggers on AWS Console login attempts"
}

variable "statistic" {
  description = "Statistic to apply to the metric"
  type        = string
  default     = "Sum"
}

variable "period" {
  description = "Period (in seconds) to evaluate the metric"
  type        = number
  default     = 300
}

variable "evaluation_periods" {
  description = "Number of evaluation periods for the alarm"
  type        = number
  default     = 1
}

variable "threshold" {
  description = "Threshold value for the alarm"
  type        = number
  default     = 1
}

variable "comparison_operator" {
  description = "Comparison operator for the threshold"
  type        = string
  default     = "GreaterThanOrEqualToThreshold"
}

variable "environment" {
  description = "Environment name for tagging (e.g. dev, prod)"
  type        = string
  default     = "dev"
}
