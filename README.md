# terraform-aws-eks-node-termination-handler

[![Lint Status](https://github.com/DNXLabs/terraform-aws-eks-node-termination-handler/workflows/Lint/badge.svg)](https://github.com/DNXLabs/terraform-aws-eks-node-termination-handler/actions)
[![LICENSE](https://img.shields.io/github/license/DNXLabs/terraform-aws-eks-node-termination-handler)](https://github.com/DNXLabs/terraform-aws-eks-node-termination-handler/blob/master/LICENSE)

Terraform module for deploying [node termination handler](https://github.com/aws/aws-node-termination-handler) inside a pre-existing EKS cluster.

## Usage

```
module "alb_ingress" {
  source = "git::https://github.com/DNXLabs/terraform-aws-eks-node-termination-handler.git"
}
```

<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| aws | >= 3.13, < 4.0 |
| helm | >= 1.0, < 3.0 |
| kubernetes | >= 1.10.0, < 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| helm | >= 1.0, < 3.0 |
| kubernetes | >= 1.10.0, < 3.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| create\_namespace | Whether to create Kubernetes namespace with name defined by `namespace`. | `bool` | `true` | no |
| enabled | Variable indicating whether deployment is enabled. | `bool` | `true` | no |
| helm\_chart\_name | Spot termination handler Helm chart name. | `string` | `"aws-node-termination-handler"` | no |
| helm\_chart\_release\_name | Spot termination handler Helm release name. | `string` | `"aws-node-termination-handler"` | no |
| helm\_chart\_repo | Spot termination handler Helm repository name. | `string` | `"https://aws.github.io/eks-charts"` | no |
| helm\_chart\_version | Spot termination handler Helm chart version. | `string` | `"0.15.0"` | no |
| mod\_dependency | Dependence variable binds all AWS resources allocated by this module, dependent modules reference this variable. | `any` | `null` | no |
| namespace | Kubernetes namespace to deploy Spot termination handler Helm chart. | `string` | `"kube-system"` | no |
| settings | Additional settings which will be passed to the Helm chart values. | `map` | `{}` | no |

## Outputs

No output.

<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-eks-node-termination-handler/blob/master/LICENSE) for full details.