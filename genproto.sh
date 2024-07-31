#!/bin/bash -eu
#
# Copyright 2018 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

 productcatalogservice
# [START gke_productcatalogservice_genproto]

PATH=$PATH:$GOPATH/bin
protodir=../../protos

protoc --go_out=plugins=grpc:genproto -I $protodir $protodir/demo.proto

# [END gke_productcatalogservice_genproto]

 currencyservice
# [START gke_currencyservice_genproto]

# protos are loaded dynamically for node, simply copies over the proto.
mkdir -p proto
cp -r ../../protos/* ./proto

# [END gke_currencyservice_genproto]

 adservice
# [START gke_adservice_genproto]
# protos are needed in adservice folder for compiling during Docker build.

mkdir -p proto && \
cp ../../protos/demo.proto src/main/proto

# [END gke_adservice_genproto]

# [START gke_emailservice_genproto]

python -m grpc_tools.protoc -I../../protos --python_out=. --grpc_python_out=. ../../protos/demo.proto

# [END gke_emailservice_genproto]
 main
 main
 main
