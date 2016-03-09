#!/bin/bash
# ------------------------------------------------------------------------
#
# Copyright 2016 WSO2, Inc. (http://wso2.com)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License

# ------------------------------------------------------------------------

set -e

# run checks for required environment variables

function check_env_variable {
    if [ -z $1 ]; then
        echo "Please set environment variable $1"
        exit
    fi
}

prgdir=`dirname "$0"`
current_path=`cd "$prgdir"; pwd`
root_dir=${current_path}/..

source ${root_dir}/environment.bash

env_variables=(PUPPET_HOME DOCKER_HOME KUBERNETES_NODE KUBERNETES_NODE_USER)

for env_var in ${env_variables[@]}; do
    check_env_variable "${env_var}"
done









