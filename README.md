## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.10.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.99.1 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_alarm"></a> [alarm](#module\_alarm) | ./modules/alarm | n/a |
| <a name="module_cloudtrail"></a> [cloudtrail](#module\_cloudtrail) | ./modules/cloudtrail | n/a |
| <a name="module_cloudwatch_logs"></a> [cloudwatch\_logs](#module\_cloudwatch\_logs) | ./modules/cloudwatch_logs | n/a |
| <a name="module_sns"></a> [sns](#module\_sns) | ./modules/sns | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alarm_description"></a> [alarm\_description](#input\_alarm\_description) | Description for the CloudWatch alarm | `string` | `"Triggers on AWS Console login attempts"` | no |
| <a name="input_alarm_name"></a> [alarm\_name](#input\_alarm\_name) | Name of the CloudWatch alarm | `string` | `"ConsoleLoginAlarm"` | no |
| <a name="input_cloudtrail_name"></a> [cloudtrail\_name](#input\_cloudtrail\_name) | Name of the CloudTrail trail | `string` | `"account-activity-trail"` | no |
| <a name="input_cloudtrail_policy_name"></a> [cloudtrail\_policy\_name](#input\_cloudtrail\_policy\_name) | IAM policy name for CloudTrail to write logs | `string` | `"cloudtrail-cloudwatch-policy"` | no |
| <a name="input_cloudtrail_role_name"></a> [cloudtrail\_role\_name](#input\_cloudtrail\_role\_name) | IAM role name for CloudTrail to assume | `string` | `"cloudtrail-cloudwatch-role"` | no |
| <a name="input_cloudwatch_log_group_name"></a> [cloudwatch\_log\_group\_name](#input\_cloudwatch\_log\_group\_name) | Name of the CloudWatch Log Group for CloudTrail | `string` | `"demo-cloudtrail-logs"` | no |
| <a name="input_cloudwatch_log_retention_days"></a> [cloudwatch\_log\_retention\_days](#input\_cloudwatch\_log\_retention\_days) | Number of days to retain CloudWatch logs | `number` | `7` | no |
| <a name="input_comparison_operator"></a> [comparison\_operator](#input\_comparison\_operator) | Comparison operator for the threshold | `string` | `"GreaterThanOrEqualToThreshold"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment name for tagging (e.g. dev, prod) | `string` | `"dev"` | no |
| <a name="input_evaluation_periods"></a> [evaluation\_periods](#input\_evaluation\_periods) | Number of evaluation periods for the alarm | `number` | `1` | no |
| <a name="input_metric_name"></a> [metric\_name](#input\_metric\_name) | Name of the CloudWatch metric | `string` | `"ConsoleLoginEventCount"` | no |
| <a name="input_metric_namespace"></a> [metric\_namespace](#input\_metric\_namespace) | Namespace of the CloudWatch metric | `string` | `"CloudTrailMetrics"` | no |
| <a name="input_notification_email"></a> [notification\_email](#input\_notification\_email) | Email to receive login notifications | `string` | `"kasiviswanath.ala@hcltech.com"` | no |
| <a name="input_period"></a> [period](#input\_period) | Period (in seconds) to evaluate the metric | `number` | `300` | no |
| <a name="input_s3_bucket_name_prefix"></a> [s3\_bucket\_name\_prefix](#input\_s3\_bucket\_name\_prefix) | Prefix for the CloudTrail S3 bucket | `string` | `"cloudtrail-activity-logs"` | no |
| <a name="input_statistic"></a> [statistic](#input\_statistic) | Statistic to apply to the metric | `string` | `"Sum"` | no |
| <a name="input_threshold"></a> [threshold](#input\_threshold) | Threshold value for the alarm | `number` | `1` | no |

## Outputs

No outputs.
