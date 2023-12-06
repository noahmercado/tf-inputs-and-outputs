# Copyright 2023 Google LLC

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     https://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

variable "environment" {
  type        = string
  default     = "env"
  description = "description"
}

variable "vpc_config" {
  type = object({
    name         = string
    description  = string
    mtu          = optional(number, 1460)
    routing_mode = optional(string, "REGIONAL")
  })

  description = "Configuration options for the VPC"

  validation {
    condition     = length(var.vpc_config.name) > 3
    error_message = "VPC name must be at least 4 characters."
  }

#   validation {
#     condition     = startswith(var.vpc_config.name, "aud-")
#     error_message = "The name of the VPC must be prefixed with `aud-` !"
#   }

  validation {
    condition     = var.vpc_config.description != ""
    error_message = "You must provide a description for your VPC!"
  }

#   validation {
#     condition     = length(regexall(var.vpc_config.routing_mode, "GLOBAL|REGIONAL")) == 1
#     error_message = "Routing mode must be either GLOBAL or REGIONAL!"
#   }
}