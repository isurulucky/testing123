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

product=$1
profile=$2
product_version=$3
docker_version=$4
log_to_match=$5

image=wso2/${product}-${profile}-${product_version}:${docker_version}
echo "docker image : " ${image}
container=`docker ps | grep ${image}`
if [[ -z ${container} ]]; then
    echo "no container found for image: ${image}"
    return 1
fi

IFS=' ' read -r -a array <<< "$container"
container_id=${array[0]}
echo "container id to get logs: ${container_id}"

carbon_logs=`docker logs ${container_id}`

if [[ ${carbon_logs} =~ "Mgt Console URL" ]]; then
    echo "found log pattern Mgt Console URL in container ${container_id}"
    return 0
else
    echo "could not find log pattern Mgt Console URL in container ${container_id}"
    return 0
fi