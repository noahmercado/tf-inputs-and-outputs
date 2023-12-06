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

output "vpc_id" {
    description = "The ID of the VPC that was created"
    value = google_compute_network.example_vpc.id
}

output "next_steps" {
    description = "List of next steps to follow"
    value = "Please reach out to noahmercado@google.com to request that your VPC be peered with the hub!"
}