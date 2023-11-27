//
//  Generated code. Do not modify.
//  source: etcd/api/authpb/auth.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'auth.pbenum.dart';

export 'auth.pbenum.dart';

class UserAddOptions extends $pb.GeneratedMessage {
  factory UserAddOptions({
    $core.bool? noPassword,
  }) {
    final $result = create();
    if (noPassword != null) {
      $result.noPassword = noPassword;
    }
    return $result;
  }
  UserAddOptions._() : super();
  factory UserAddOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UserAddOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserAddOptions',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'authpb'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'noPassword')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UserAddOptions clone() => UserAddOptions()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UserAddOptions copyWith(void Function(UserAddOptions) updates) =>
      super.copyWith((message) => updates(message as UserAddOptions))
          as UserAddOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserAddOptions create() => UserAddOptions._();
  UserAddOptions createEmptyInstance() => create();
  static $pb.PbList<UserAddOptions> createRepeated() =>
      $pb.PbList<UserAddOptions>();
  @$core.pragma('dart2js:noInline')
  static UserAddOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserAddOptions>(create);
  static UserAddOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get noPassword => $_getBF(0);
  @$pb.TagNumber(1)
  set noPassword($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNoPassword() => $_has(0);
  @$pb.TagNumber(1)
  void clearNoPassword() => clearField(1);
}

/// User is a single entry in the bucket authUsers
class User extends $pb.GeneratedMessage {
  factory User({
    $core.List<$core.int>? name,
    $core.List<$core.int>? password,
    $core.Iterable<$core.String>? roles,
    UserAddOptions? options,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (password != null) {
      $result.password = password;
    }
    if (roles != null) {
      $result.roles.addAll(roles);
    }
    if (options != null) {
      $result.options = options;
    }
    return $result;
  }
  User._() : super();
  factory User.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'User',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'authpb'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'name', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'password', $pb.PbFieldType.OY)
    ..pPS(3, _omitFieldNames ? '' : 'roles')
    ..aOM<UserAddOptions>(4, _omitFieldNames ? '' : 'options',
        subBuilder: UserAddOptions.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  User copyWith(void Function(User) updates) =>
      super.copyWith((message) => updates(message as User)) as User;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get name => $_getN(0);
  @$pb.TagNumber(1)
  set name($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get password => $_getN(1);
  @$pb.TagNumber(2)
  set password($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get roles => $_getList(2);

  @$pb.TagNumber(4)
  UserAddOptions get options => $_getN(3);
  @$pb.TagNumber(4)
  set options(UserAddOptions v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasOptions() => $_has(3);
  @$pb.TagNumber(4)
  void clearOptions() => clearField(4);
  @$pb.TagNumber(4)
  UserAddOptions ensureOptions() => $_ensure(3);
}

/// Permission is a single entity
class Permission extends $pb.GeneratedMessage {
  factory Permission({
    Permission_Type? permType,
    $core.List<$core.int>? key,
    $core.List<$core.int>? rangeEnd,
  }) {
    final $result = create();
    if (permType != null) {
      $result.permType = permType;
    }
    if (key != null) {
      $result.key = key;
    }
    if (rangeEnd != null) {
      $result.rangeEnd = rangeEnd;
    }
    return $result;
  }
  Permission._() : super();
  factory Permission.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Permission.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Permission',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'authpb'),
      createEmptyInstance: create)
    ..e<Permission_Type>(
        1, _omitFieldNames ? '' : 'permType', $pb.PbFieldType.OE,
        protoName: 'permType',
        defaultOrMaker: Permission_Type.READ,
        valueOf: Permission_Type.valueOf,
        enumValues: Permission_Type.values)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'rangeEnd', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Permission clone() => Permission()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Permission copyWith(void Function(Permission) updates) =>
      super.copyWith((message) => updates(message as Permission)) as Permission;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Permission create() => Permission._();
  Permission createEmptyInstance() => create();
  static $pb.PbList<Permission> createRepeated() => $pb.PbList<Permission>();
  @$core.pragma('dart2js:noInline')
  static Permission getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Permission>(create);
  static Permission? _defaultInstance;

  @$pb.TagNumber(1)
  Permission_Type get permType => $_getN(0);
  @$pb.TagNumber(1)
  set permType(Permission_Type v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPermType() => $_has(0);
  @$pb.TagNumber(1)
  void clearPermType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get key => $_getN(1);
  @$pb.TagNumber(2)
  set key($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get rangeEnd => $_getN(2);
  @$pb.TagNumber(3)
  set rangeEnd($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRangeEnd() => $_has(2);
  @$pb.TagNumber(3)
  void clearRangeEnd() => clearField(3);
}

/// Role is a single entry in the bucket authRoles
class Role extends $pb.GeneratedMessage {
  factory Role({
    $core.List<$core.int>? name,
    $core.Iterable<Permission>? keyPermission,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (keyPermission != null) {
      $result.keyPermission.addAll(keyPermission);
    }
    return $result;
  }
  Role._() : super();
  factory Role.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Role.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Role',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'authpb'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'name', $pb.PbFieldType.OY)
    ..pc<Permission>(
        2, _omitFieldNames ? '' : 'keyPermission', $pb.PbFieldType.PM,
        protoName: 'keyPermission', subBuilder: Permission.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Role clone() => Role()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Role copyWith(void Function(Role) updates) =>
      super.copyWith((message) => updates(message as Role)) as Role;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Role create() => Role._();
  Role createEmptyInstance() => create();
  static $pb.PbList<Role> createRepeated() => $pb.PbList<Role>();
  @$core.pragma('dart2js:noInline')
  static Role getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Role>(create);
  static Role? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get name => $_getN(0);
  @$pb.TagNumber(1)
  set name($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Permission> get keyPermission => $_getList(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
