import 'dart:convert';

import 'authpb/auth.pb.dart' as pb;
import 'etcdserverpb/rpc.pbgrpc.dart' as pb;
import 'response.dart';

class AuthEnableResponse implements EtcdResponse {
  AuthEnableResponse.fromProto(this.proto);

  final pb.AuthEnableResponse proto;

  @override
  late final ResponseHeader header = ResponseHeader.fromProto(proto.header);
}

class AuthDisableResponse implements EtcdResponse {
  AuthDisableResponse.fromProto(this.proto);

  final pb.AuthDisableResponse proto;

  @override
  late final ResponseHeader header = ResponseHeader.fromProto(proto.header);
}

class AuthStatusResponse implements EtcdResponse {
  AuthStatusResponse.fromProto(this.proto);

  final pb.AuthStatusResponse proto;

  @override
  late final ResponseHeader header = ResponseHeader.fromProto(proto.header);
  late final bool enabled = proto.enabled;
  late final int authRevision = proto.authRevision.toInt();
}

class AuthenticateResponse implements EtcdResponse {
  AuthenticateResponse.fromProto(this.proto);

  final pb.AuthenticateResponse proto;

  @override
  late final ResponseHeader header = ResponseHeader.fromProto(proto.header);
  late final String token = proto.token;
}

class AuthUserAddResponse implements EtcdResponse {
  AuthUserAddResponse.fromProto(this.proto);

  final pb.AuthUserAddResponse proto;

  @override
  late final ResponseHeader header = ResponseHeader.fromProto(proto.header);
}

class AuthUserGetResponse implements EtcdResponse {
  AuthUserGetResponse.fromProto(this.proto);

  final pb.AuthUserGetResponse proto;

  @override
  late final ResponseHeader header = ResponseHeader.fromProto(proto.header);
  late final List<String> roles = proto.roles;
}

class AuthUserListResponse implements EtcdResponse {
  AuthUserListResponse.fromProto(this.proto);

  final pb.AuthUserListResponse proto;

  @override
  late final ResponseHeader header = ResponseHeader.fromProto(proto.header);
  late final List<String> users = proto.users;
}

class AuthUserDeleteResponse implements EtcdResponse {
  AuthUserDeleteResponse.fromProto(this.proto);

  final pb.AuthUserDeleteResponse proto;

  @override
  late final ResponseHeader header = ResponseHeader.fromProto(proto.header);
}

class AuthUserChangePasswordResponse implements EtcdResponse {
  AuthUserChangePasswordResponse.fromProto(this.proto);

  final pb.AuthUserChangePasswordResponse proto;

  @override
  late final ResponseHeader header = ResponseHeader.fromProto(proto.header);
}

class AuthUserGrantRoleResponse implements EtcdResponse {
  AuthUserGrantRoleResponse.fromProto(this.proto);

  final pb.AuthUserGrantRoleResponse proto;

  @override
  late final ResponseHeader header = ResponseHeader.fromProto(proto.header);
}

class AuthUserRevokeRoleResponse implements EtcdResponse {
  AuthUserRevokeRoleResponse.fromProto(this.proto);

  final pb.AuthUserRevokeRoleResponse proto;

  @override
  late final ResponseHeader header = ResponseHeader.fromProto(proto.header);
}

class AuthRoleAddResponse implements EtcdResponse {
  AuthRoleAddResponse.fromProto(this.proto);

  final pb.AuthRoleAddResponse proto;

  @override
  late final ResponseHeader header = ResponseHeader.fromProto(proto.header);
}

class AuthRoleDeleteResponse implements EtcdResponse {
  AuthRoleDeleteResponse.fromProto(this.proto);

  final pb.AuthRoleDeleteResponse proto;

  @override
  late final ResponseHeader header = ResponseHeader.fromProto(proto.header);
}

class AuthRoleGrantPermissionResponse implements EtcdResponse {
  AuthRoleGrantPermissionResponse.fromProto(this.proto);

  final pb.AuthRoleGrantPermissionResponse proto;

  @override
  late final ResponseHeader header = ResponseHeader.fromProto(proto.header);
}

class AuthRoleRevokePermissionResponse implements EtcdResponse {
  AuthRoleRevokePermissionResponse.fromProto(this.proto);

  final pb.AuthRoleRevokePermissionResponse proto;

  @override
  late final ResponseHeader header = ResponseHeader.fromProto(proto.header);
}

enum PermissionType {
  read,
  write,
  readwrite;

  static PermissionType fromProto(pb.Permission_Type type) {
    switch (type) {
      case pb.Permission_Type.READ:
        return PermissionType.read;
      case pb.Permission_Type.WRITE:
        return PermissionType.write;
      case pb.Permission_Type.READWRITE:
        return PermissionType.readwrite;
      default:
        throw ArgumentError.value(type);
    }
  }

  pb.Permission_Type toProto() {
    switch (this) {
      case PermissionType.read:
        return pb.Permission_Type.READ;
      case PermissionType.write:
        return pb.Permission_Type.WRITE;
      case PermissionType.readwrite:
        return pb.Permission_Type.READWRITE;
      default:
        throw ArgumentError.value(this);
    }
  }
}

class Permission {
  Permission({
    required PermissionType permType,
    required String key,
    String? rangeEnd,
  }) : proto = pb.Permission()
          ..permType = permType.toProto()
          ..key = utf8.encode(key)
          ..rangeEnd = utf8.encode(rangeEnd ?? '');

  Permission.fromBytes({
    required PermissionType permType,
    required List<int> key,
    List<int> rangeEnd = const [],
  }) : proto = pb.Permission()
          ..permType = permType.toProto()
          ..key = key
          ..rangeEnd = rangeEnd;

  Permission._(this.proto);

  final pb.Permission proto;

  late final PermissionType permType = PermissionType.fromProto(proto.permType);
  late final List<int> key = proto.key;
  late final String keyString = utf8.decode(key);
  late final List<int> rangeEnd = proto.rangeEnd;
  late final String rangeEndString = utf8.decode(rangeEnd);
}

class AuthRoleGetResponse implements EtcdResponse {
  AuthRoleGetResponse.fromProto(this.proto);

  final pb.AuthRoleGetResponse proto;

  @override
  late final ResponseHeader header = ResponseHeader.fromProto(proto.header);
  late final List<Permission> perm =
      proto.perm.map((e) => Permission._(e)).toList(growable: false);
}

class AuthRoleListResponse implements EtcdResponse {
  AuthRoleListResponse.fromProto(this.proto);

  final pb.AuthRoleListResponse proto;

  @override
  late final ResponseHeader header = ResponseHeader.fromProto(proto.header);
  late final List<String> roles = proto.roles;
}

class AuthClient {
  AuthClient.fromChannel(this.innerClient);

  final pb.AuthClient innerClient;

  Future<AuthEnableResponse> enable() async {
    final request = pb.AuthEnableRequest();
    final response = await innerClient.authEnable(request);
    return AuthEnableResponse.fromProto(response);
  }

  Future<AuthDisableResponse> disable() async {
    final request = pb.AuthDisableRequest();
    final response = await innerClient.authDisable(request);
    return AuthDisableResponse.fromProto(response);
  }

  Future<AuthStatusResponse> status() async {
    final request = pb.AuthStatusRequest();
    final response = await innerClient.authStatus(request);
    return AuthStatusResponse.fromProto(response);
  }

  Future<AuthenticateResponse> authenticate({
    required String user,
    required String password,
  }) async {
    final request = pb.AuthenticateRequest()
      ..name = user
      ..password = password;
    final response = await innerClient.authenticate(request);
    return AuthenticateResponse.fromProto(response);
  }

  Future<AuthUserAddResponse> userAdd({
    required String user,
    required String password,
  }) async {
    final request = pb.AuthUserAddRequest()
      ..name = user
      ..password = password;
    final response = await innerClient.userAdd(request);
    return AuthUserAddResponse.fromProto(response);
  }

  Future<AuthUserGetResponse> userGet({
    required String user,
  }) async {
    final request = pb.AuthUserGetRequest()..name = user;
    final response = await innerClient.userGet(request);
    return AuthUserGetResponse.fromProto(response);
  }

  Future<AuthUserListResponse> userList() async {
    final request = pb.AuthUserListRequest();
    final response = await innerClient.userList(request);
    return AuthUserListResponse.fromProto(response);
  }

  Future<AuthUserDeleteResponse> userDelete({
    required String user,
  }) async {
    final request = pb.AuthUserDeleteRequest()..name = user;
    final response = await innerClient.userDelete(request);
    return AuthUserDeleteResponse.fromProto(response);
  }

  Future<AuthUserChangePasswordResponse> userChangePassword({
    required String user,
    required String password,
  }) async {
    final request = pb.AuthUserChangePasswordRequest()
      ..name = user
      ..password = password;
    final response = await innerClient.userChangePassword(request);
    return AuthUserChangePasswordResponse.fromProto(response);
  }

  Future<AuthUserGrantRoleResponse> userGrantRole({
    required String user,
    required String role,
  }) async {
    final request = pb.AuthUserGrantRoleRequest()
      ..user = user
      ..role = role;
    final response = await innerClient.userGrantRole(request);
    return AuthUserGrantRoleResponse.fromProto(response);
  }

  Future<AuthUserRevokeRoleResponse> userRevokeRole({
    required String user,
    required String role,
  }) async {
    final request = pb.AuthUserRevokeRoleRequest()
      ..name = user
      ..role = role;
    final response = await innerClient.userRevokeRole(request);
    return AuthUserRevokeRoleResponse.fromProto(response);
  }

  Future<AuthRoleAddResponse> roleAdd({
    required String role,
  }) async {
    final request = pb.AuthRoleAddRequest()..name = role;
    final response = await innerClient.roleAdd(request);
    return AuthRoleAddResponse.fromProto(response);
  }

  Future<AuthRoleGetResponse> roleGet({
    required String role,
  }) async {
    final request = pb.AuthRoleGetRequest()..role = role;
    final response = await innerClient.roleGet(request);
    return AuthRoleGetResponse.fromProto(response);
  }

  Future<AuthRoleListResponse> roleList() async {
    final request = pb.AuthRoleListRequest();
    final response = await innerClient.roleList(request);
    return AuthRoleListResponse.fromProto(response);
  }

  Future<AuthRoleDeleteResponse> roleDelete({
    required String role,
  }) async {
    final request = pb.AuthRoleDeleteRequest()..role = role;
    final response = await innerClient.roleDelete(request);
    return AuthRoleDeleteResponse.fromProto(response);
  }

  Future<AuthRoleGrantPermissionResponse> roleGrantPermission({
    required String role,
    required Permission permission,
  }) async {
    final request = pb.AuthRoleGrantPermissionRequest()
      ..name = role
      ..perm = permission.proto;
    final response = await innerClient.roleGrantPermission(request);
    return AuthRoleGrantPermissionResponse.fromProto(response);
  }

  Future<AuthRoleRevokePermissionResponse> roleRevokePermission({
    required String role,
    required Permission permission,
  }) async {
    final request = pb.AuthRoleRevokePermissionRequest()
      ..role = role
      ..key = permission.key
      ..rangeEnd = permission.rangeEnd;
    final response = await innerClient.roleRevokePermission(request);
    return AuthRoleRevokePermissionResponse.fromProto(response);
  }
}
