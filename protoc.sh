set -e
rm -r dart_etcd/lib/src/etcd
protoc -I proto --dart_out=grpc:dart_etcd/lib/src \
  proto/etcd/api/etcdserverpb/rpc.proto \
  proto/etcd/api/mvccpb/kv.proto \
  proto/etcd/api/authpb/auth.proto
rm -rf dart_etcd/lib/src/authpb
rm -rf dart_etcd/lib/src/etcdserverpb
rm -rf dart_etcd/lib/src/mvccpb
mv dart_etcd/lib/src/etcd/api/* dart_etcd/lib/src/
rm -rf dart_etcd/lib/src/etcd
dart format .