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

product_name=$1
product_version=$2
image_version=$3
product_profile=$4

product_docker_dir=${DOCKER_HOME}/wso2$1

pushd ${product_docker_dir} > /dev/null

# build the docker image
bash build.sh $2 $3 $4

popd > /dev/null


