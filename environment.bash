#!/bin/bash
# ------------------------------------------------------------------------
#
# Copyright 2005-2015 WSO2, Inc. (http://wso2.com)
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

export PUPPET_HOME=/home/isuru/wso2/src/3rd_feb/puppet-modules
export DOCKERFILES_HOME=/home/isuru/wso2/src/3rd_feb/dockerfiles
export KUBERNETES_HOME=/home/isuru/wso2/src/3rd_feb/kubernetes-artifacts
export KUBERNETES_NODE=172.17.8.102
export KUBERNETES_NODE_USER=core
#export FLEETCTL_ENDPOINT=http://172.17.8.101:4001
#export KUBERNETES_MASTER=http://172.17.8.101:8080
