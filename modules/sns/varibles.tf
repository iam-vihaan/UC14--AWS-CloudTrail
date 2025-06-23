variable "email" {
  type = string
}

variable "login_alerts_name" {
  type        = string
  description = "The name of the SNS topic for login alerts"
  default     = "console-login-alerts"

}
