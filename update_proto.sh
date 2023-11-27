set -e

rm -rf proto
mkdir proto

git pull --recurse-submodules

mkdir proto/etcd
cp -r etcd/api proto/etcd/

mkdir proto/gogoproto
cp -r gogoprotobuf/gogoproto/gogo.proto proto/gogoproto

mkdir -p proto/google/api
cp -r googleapis/google/api/annotations.proto proto/google/api
cp -r googleapis/google/api/http.proto proto/google/api

mkdir -p proto/protoc-gen-openapiv2/options
cp -r grpc-gateway/protoc-gen-openapiv2/options proto/protoc-gen-openapiv2/

find proto/ -type f -not -name "*.proto" -delete