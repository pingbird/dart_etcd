import 'etcdserverpb/rpc.pb.dart' as pb;

class ResponseHeader {
  ResponseHeader.fromProto(this.proto);

  final pb.ResponseHeader proto;

  late final int clusterId = proto.clusterId.toInt();
  late final int memberId = proto.memberId.toInt();
  late final int revision = proto.revision.toInt();
  late final int raftTerm = proto.raftTerm.toInt();
}

abstract class EtcdResponse {
  ResponseHeader get header;
}
