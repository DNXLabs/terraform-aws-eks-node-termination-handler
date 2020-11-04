# terraform-aws-eks-node-termination-handler

[![Lint Status](https://github.com/DNXLabs/terraform-aws-eks-node-termination-handler/workflows/Lint/badge.svg)](https://github.com/DNXLabs/terraform-aws-eks-node-termination-handler/actions)
[![LICENSE](https://img.shields.io/github/license/DNXLabs/terraform-aws-eks-node-termination-handler)](https://github.com/DNXLabs/terraform-aws-eks-node-termination-handler/blob/master/LICENSE)

<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 0.13.0 |

## Providers

| Name | Version |
|------|---------|
| helm | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| enabled | n/a | `bool` | `true` | no |
| helm\_chart\_name | EKS Spot termination handler Helm chart name. | `string` | `"aws-node-termination-handler"` | no |
| helm\_chart\_release\_name | EKS Spot termination handler Helm release name. | `string` | `"aws-node-termination-handler"` | no |
| helm\_chart\_repo | EKS Spot termination handler Helm repository name. | `string` | `"https://aws.github.io/eks-charts"` | no |
| helm\_chart\_version | EKS Spot termination handler Helm chart version. | `string` | `"0.9.1"` | no |
| namespace | Kubernetes namespace to deploy EKS Spot termination handler Helm chart. | `string` | `"kube-system"` | no |

## Outputs

No output.

<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-eks-node-termination-handler/blob/master/LICENSE) for full details.