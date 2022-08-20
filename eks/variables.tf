variable "cluster_name" {
  description = "Name of cluster - used by Terratest for e2e test automation"
  type        = string
  default     = "eks-us1-dev"
}
variable "vpc_id" {
  description = "VPC Id"
  type        = string
}
variable "instance_type" {
  description = ""
  type        = list(string)
  default     = ["t3.micro"]
}

variable "private_subnet_ids" {
  description = "List of private subnets Ids for the cluster and worker nodes"
  type        = list(string)
  default     = []
}

variable "cluster_endpoint_public_access" {
  description = "Indicates whether or not the EKS public API server endpoint is enabled. Default to EKS resource and it is true"
  type        = bool
  default     = true
}

variable "cluster_endpoint_private_access" {
  description = "Indicates whether or not the EKS private API server endpoint is enabled. Default to EKS resource and it is false"
  type        = bool
  default     = false
}
variable "cluster_version" {
  description = "Kubernetes `<major>.<minor>` version to use for the EKS cluster (i.e.: `1.22`)"
  type        = string
  default     = "1.21"
}
variable "qtd_min_nodes" {
  description = "qtd of the instance"
  type = number
  default = 2
}
variable "enable_argocd" {
  type = bool
  default = true
}
variable "enable_metrics_server" {
  type = bool
  default = true
}
variable "enable_auto_scale" {
  type = bool
  default = true
}