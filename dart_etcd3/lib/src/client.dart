import 'dart:io';

import 'package:grpc/grpc.dart';

import 'auth.dart';
import 'etcdserverpb/rpc.pbgrpc.dart' as pb;
import 'kv.dart';
import 'watch.dart';

export 'package:grpc/grpc.dart'
    show ClientChannel, ChannelOptions, ChannelCredentials;

class EtcdClient {
  EtcdClient({
    required InternetAddress host,
    int port = 2380,
    ChannelOptions options = const ChannelOptions(),
  }) : inner = ClientChannel(
          host,
          port: port,
          options: options,
        );

  EtcdClient.fromChannel(this.inner);

  final ClientChannel inner;
  late final auth = AuthClient.fromChannel(pb.AuthClient(inner));
  late final kv = KVClient.fromChannel(pb.KVClient(inner));
  late final watch = WatchClient.fromChannel(pb.WatchClient(inner));

  Future<void> close() => inner.shutdown();
}
