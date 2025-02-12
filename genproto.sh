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

 checkoutservice
# [START gke_checkoutservice_genproto]

 recommendationservice
# [START gke_recommendationservice_genproto]

# script to compile python protos
#
# requires gRPC tools:
#   pip install -r requirements.txt

python -m grpc_tools.protoc -I../../protos --python_out=. --grpc_python_out=. ../../protos/demo.proto

# [END gke_recommendationservice_genproto]

 frontend
# [START gke_frontend_genproto]

 shippingservice
# [START gke_shippingservice_genproto]

 paymentservice
# [START gke_paymentservice_genproto]

 productcatalogservice
# [START gke_productcatalogservice_genproto]
 main
 main
 main

PATH=$PATH:$GOPATH/bin
protodir=../../protos

protoc --go_out=plugins=grpc:genproto -I $protodir $protodir/demo.proto

 checkoutservice
# [END gke_checkoutservice_genproto]

 frontend
# [END gke_frontend_genproto]

 shippingservice
# [END gke_shippingservice_genproto]

# [END gke_productcatalogservice_genproto]

 currencyservice
# [START gke_currencyservice_genproto]
 main

# protos are loaded dynamically for node, simply copies over the proto.
mkdir -p proto
cp -r ../../protos/* ./proto

 paymentservice
# [END gke_paymentservice_genproto]

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
 main
 main
 main
 main
 main
