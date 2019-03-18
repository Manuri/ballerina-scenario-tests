#!bin/bash
# Copyright (c) 2019, WSO2 Inc. (http://wso2.org) All Rights Reserved.
#
# WSO2 Inc. licenses this file to you under the Apache License,
# Version 2.0 (the "License"); you may not use this file except
# in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

. ${parent_path}/utils/utils.sh

cleanup_deployment() {
    echo "Resource deletion script is being executed !"
    input_dir=${1}

    # Read infrastucture cleanup properties to a associative array
    declare -A infra_cleanup_config
    read_property_file ${input_dir}/deployment-cleanup.properties deployment_cleanup_config

    # Cleanup k8s resources
    cleanup_k8s_resources deployment_cleanup_config
}

cleanup_deployment ${2}
