variable "enabled" {
  type    = bool
  default = true
}

variable "helm_chart_name" {
  type        = string
  default     = "aws-node-termination-handler"
  description = "EKS Spot termination handler Helm chart name."
}

variable "helm_chart_release_name" {
  type        = string
  default     = "aws-node-termination-handler"
  description = "EKS Spot termination handler Helm release name."
}

variable "helm_chart_repo" {
  type        = string
  default     = "https://aws.github.io/eks-charts"
  description = "EKS Spot termination handler Helm repository name."
}

variable "helm_chart_version" {
  type        = string
  default     = "0.9.1"
  description = "EKS Spot termination handler Helm chart version."
}

variable "namespace" {
  type        = string
  default     = "kube-system"
  description = "Kubernetes namespace to deploy EKS Spot termination handler Helm chart."
}