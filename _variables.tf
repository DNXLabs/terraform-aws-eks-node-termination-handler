variable "enabled" {
  type        = bool
  default     = true
  description = "Variable indicating whether deployment is enabled."
}

variable "helm_chart_name" {
  type        = string
  default     = "aws-node-termination-handler"
  description = "Spot termination handler Helm chart name."
}

variable "helm_chart_release_name" {
  type        = string
  default     = "aws-node-termination-handler"
  description = "Spot termination handler Helm release name."
}

variable "helm_chart_repo" {
  type        = string
  default     = "https://aws.github.io/eks-charts"
  description = "Spot termination handler Helm repository name."
}

variable "helm_chart_version" {
  type        = string
  default     = "0.9.1"
  description = "Spot termination handler Helm chart version."
}

variable "create_namespace" {
  type        = bool
  default     = true
  description = "Whether to create Kubernetes namespace with name defined by `namespace`."
}

variable "namespace" {
  type        = string
  default     = "kube-system"
  description = "Kubernetes namespace to deploy Spot termination handler Helm chart."
}

variable "mod_dependency" {
  default     = null
  description = "Dependence variable binds all AWS resources allocated by this module, dependent modules reference this variable."
}