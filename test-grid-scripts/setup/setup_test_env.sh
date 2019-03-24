#!/bin/bash
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

set -o errexit
set -o pipefail
set -o nounset

setup_test_env() {
    local parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
    local grand_parent_path=$(dirname ${parent_path})
    . ${grand_parent_path}/util/common_utils.sh
    . ${grand_parent_path}/util/test_utils.sh

    # Read deployment.properties content into an associative array
    declare -g -A deployment_config
    read_property_file "${input_dir}/deployment.properties" deployment_config
}

setup_test_env
