// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:json_annotation/json_annotation.dart';
import 'package:orm/binary_engine.dart' as _i5;
import 'package:orm/engine_core.dart' as _i3;
import 'package:orm/graphql.dart' as _i2;
import 'package:orm/logger.dart' as _i4;
import 'package:orm/orm.dart' as _i1;
import 'package:orm/orm.dart' show DateTimeJsonConverter;

part 'client.g.dart';

enum GroupScalarFieldEnum implements _i1.PrismaEnum {
  id,
  name,
  permissions,
  allowLoginIfNoPasswordSet;

  @override
  String? get originalName => null;
}

enum QueryMode implements _i1.PrismaEnum {
  @JsonValue('default')
  $default(r'default'),
  insensitive;

  const QueryMode([this.originalName]);

  @override
  final String? originalName;
}

enum SortOrder implements _i1.PrismaEnum {
  asc,
  desc;

  @override
  String? get originalName => null;
}

enum UserScalarFieldEnum implements _i1.PrismaEnum {
  id,
  name,
  groupId,
  passwordHash;

  @override
  String? get originalName => null;
}

enum GroupPermission implements _i1.PrismaEnum {
  @JsonValue('BroadcastMessage')
  broadcastMessage(r'BroadcastMessage'),
  @JsonValue('BroadcastExecute')
  broadcastExecute(r'BroadcastExecute');

  const GroupPermission([this.originalName]);

  @override
  final String? originalName;
}

@_i1.jsonSerializable
class GroupWhereInput implements _i1.JsonSerializable {
  const GroupWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.permissions,
    this.allowLoginIfNoPasswordSet,
    this.users,
  });

  factory GroupWhereInput.fromJson(Map<String, dynamic> json) =>
      _$GroupWhereInputFromJson(json);

  final Iterable<GroupWhereInput>? AND;

  final Iterable<GroupWhereInput>? OR;

  final Iterable<GroupWhereInput>? NOT;

  final StringFilter? id;

  final StringFilter? name;

  final EnumGroupPermissionNullableListFilter? permissions;

  final BoolFilter? allowLoginIfNoPasswordSet;

  final UserListRelationFilter? users;

  @override
  Map<String, dynamic> toJson() => _$GroupWhereInputToJson(this);
}

@_i1.jsonSerializable
class GroupOrderByWithRelationInput implements _i1.JsonSerializable {
  const GroupOrderByWithRelationInput({
    this.id,
    this.name,
    this.permissions,
    this.allowLoginIfNoPasswordSet,
    this.users,
  });

  factory GroupOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$GroupOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? permissions;

  final SortOrder? allowLoginIfNoPasswordSet;

  final UserOrderByRelationAggregateInput? users;

  @override
  Map<String, dynamic> toJson() => _$GroupOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class GroupWhereUniqueInput implements _i1.JsonSerializable {
  const GroupWhereUniqueInput({
    this.id,
    this.name,
  });

  factory GroupWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$GroupWhereUniqueInputFromJson(json);

  final String? id;

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$GroupWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class GroupOrderByWithAggregationInput implements _i1.JsonSerializable {
  const GroupOrderByWithAggregationInput({
    this.id,
    this.name,
    this.permissions,
    this.allowLoginIfNoPasswordSet,
    this.$count,
    this.$max,
    this.$min,
  });

  factory GroupOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$GroupOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? permissions;

  final SortOrder? allowLoginIfNoPasswordSet;

  @JsonKey(name: r'_count')
  final GroupCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_max')
  final GroupMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final GroupMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() =>
      _$GroupOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class GroupScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const GroupScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.permissions,
    this.allowLoginIfNoPasswordSet,
  });

  factory GroupScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$GroupScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<GroupScalarWhereWithAggregatesInput>? AND;

  final Iterable<GroupScalarWhereWithAggregatesInput>? OR;

  final Iterable<GroupScalarWhereWithAggregatesInput>? NOT;

  final StringWithAggregatesFilter? id;

  final StringWithAggregatesFilter? name;

  final EnumGroupPermissionNullableListFilter? permissions;

  final BoolWithAggregatesFilter? allowLoginIfNoPasswordSet;

  @override
  Map<String, dynamic> toJson() =>
      _$GroupScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class UserWhereInput implements _i1.JsonSerializable {
  const UserWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.groupId,
    this.passwordHash,
    this.group,
  });

  factory UserWhereInput.fromJson(Map<String, dynamic> json) =>
      _$UserWhereInputFromJson(json);

  final Iterable<UserWhereInput>? AND;

  final Iterable<UserWhereInput>? OR;

  final Iterable<UserWhereInput>? NOT;

  final StringFilter? id;

  final StringFilter? name;

  final StringFilter? groupId;

  final StringNullableFilter? passwordHash;

  final GroupRelationFilter? group;

  @override
  Map<String, dynamic> toJson() => _$UserWhereInputToJson(this);
}

@_i1.jsonSerializable
class UserOrderByWithRelationInput implements _i1.JsonSerializable {
  const UserOrderByWithRelationInput({
    this.id,
    this.name,
    this.groupId,
    this.passwordHash,
    this.group,
  });

  factory UserOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$UserOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? groupId;

  final SortOrder? passwordHash;

  final GroupOrderByWithRelationInput? group;

  @override
  Map<String, dynamic> toJson() => _$UserOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class UserWhereUniqueInput implements _i1.JsonSerializable {
  const UserWhereUniqueInput({
    this.id,
    this.name,
  });

  factory UserWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$UserWhereUniqueInputFromJson(json);

  final String? id;

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$UserWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class UserOrderByWithAggregationInput implements _i1.JsonSerializable {
  const UserOrderByWithAggregationInput({
    this.id,
    this.name,
    this.groupId,
    this.passwordHash,
    this.$count,
    this.$max,
    this.$min,
  });

  factory UserOrderByWithAggregationInput.fromJson(Map<String, dynamic> json) =>
      _$UserOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? groupId;

  final SortOrder? passwordHash;

  @JsonKey(name: r'_count')
  final UserCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_max')
  final UserMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final UserMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() =>
      _$UserOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class UserScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const UserScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.groupId,
    this.passwordHash,
  });

  factory UserScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<UserScalarWhereWithAggregatesInput>? AND;

  final Iterable<UserScalarWhereWithAggregatesInput>? OR;

  final Iterable<UserScalarWhereWithAggregatesInput>? NOT;

  final StringWithAggregatesFilter? id;

  final StringWithAggregatesFilter? name;

  final StringWithAggregatesFilter? groupId;

  final StringNullableWithAggregatesFilter? passwordHash;

  @override
  Map<String, dynamic> toJson() =>
      _$UserScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class GroupCreateInput implements _i1.JsonSerializable {
  const GroupCreateInput({
    this.id,
    required this.name,
    this.permissions,
    this.allowLoginIfNoPasswordSet,
    this.users,
  });

  factory GroupCreateInput.fromJson(Map<String, dynamic> json) =>
      _$GroupCreateInputFromJson(json);

  final String? id;

  final String name;

  final Iterable<GroupPermission>? permissions;

  final bool? allowLoginIfNoPasswordSet;

  final UserCreateNestedManyWithoutGroupInput? users;

  @override
  Map<String, dynamic> toJson() => _$GroupCreateInputToJson(this);
}

@_i1.jsonSerializable
class GroupUncheckedCreateInput implements _i1.JsonSerializable {
  const GroupUncheckedCreateInput({
    this.id,
    required this.name,
    this.permissions,
    this.allowLoginIfNoPasswordSet,
    this.users,
  });

  factory GroupUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$GroupUncheckedCreateInputFromJson(json);

  final String? id;

  final String name;

  final Iterable<GroupPermission>? permissions;

  final bool? allowLoginIfNoPasswordSet;

  final UserUncheckedCreateNestedManyWithoutGroupInput? users;

  @override
  Map<String, dynamic> toJson() => _$GroupUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class GroupUpdateInput implements _i1.JsonSerializable {
  const GroupUpdateInput({
    this.id,
    this.name,
    this.permissions,
    this.allowLoginIfNoPasswordSet,
    this.users,
  });

  factory GroupUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$GroupUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final Iterable<GroupPermission>? permissions;

  final BoolFieldUpdateOperationsInput? allowLoginIfNoPasswordSet;

  final UserUpdateManyWithoutGroupNestedInput? users;

  @override
  Map<String, dynamic> toJson() => _$GroupUpdateInputToJson(this);
}

@_i1.jsonSerializable
class GroupUncheckedUpdateInput implements _i1.JsonSerializable {
  const GroupUncheckedUpdateInput({
    this.id,
    this.name,
    this.permissions,
    this.allowLoginIfNoPasswordSet,
    this.users,
  });

  factory GroupUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$GroupUncheckedUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final Iterable<GroupPermission>? permissions;

  final BoolFieldUpdateOperationsInput? allowLoginIfNoPasswordSet;

  final UserUncheckedUpdateManyWithoutGroupNestedInput? users;

  @override
  Map<String, dynamic> toJson() => _$GroupUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class GroupCreateManyInput implements _i1.JsonSerializable {
  const GroupCreateManyInput({
    this.id,
    required this.name,
    this.permissions,
    this.allowLoginIfNoPasswordSet,
  });

  factory GroupCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$GroupCreateManyInputFromJson(json);

  final String? id;

  final String name;

  final Iterable<GroupPermission>? permissions;

  final bool? allowLoginIfNoPasswordSet;

  @override
  Map<String, dynamic> toJson() => _$GroupCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class GroupUpdateManyMutationInput implements _i1.JsonSerializable {
  const GroupUpdateManyMutationInput({
    this.id,
    this.name,
    this.permissions,
    this.allowLoginIfNoPasswordSet,
  });

  factory GroupUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$GroupUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final Iterable<GroupPermission>? permissions;

  final BoolFieldUpdateOperationsInput? allowLoginIfNoPasswordSet;

  @override
  Map<String, dynamic> toJson() => _$GroupUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class GroupUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const GroupUncheckedUpdateManyInput({
    this.id,
    this.name,
    this.permissions,
    this.allowLoginIfNoPasswordSet,
  });

  factory GroupUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$GroupUncheckedUpdateManyInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final Iterable<GroupPermission>? permissions;

  final BoolFieldUpdateOperationsInput? allowLoginIfNoPasswordSet;

  @override
  Map<String, dynamic> toJson() => _$GroupUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateInput implements _i1.JsonSerializable {
  const UserCreateInput({
    this.id,
    required this.name,
    this.passwordHash,
    required this.group,
  });

  factory UserCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateInputFromJson(json);

  final String? id;

  final String name;

  final String? passwordHash;

  final GroupCreateNestedOneWithoutUsersInput group;

  @override
  Map<String, dynamic> toJson() => _$UserCreateInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedCreateInput implements _i1.JsonSerializable {
  const UserUncheckedCreateInput({
    this.id,
    required this.name,
    required this.groupId,
    this.passwordHash,
  });

  factory UserUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedCreateInputFromJson(json);

  final String? id;

  final String name;

  final String groupId;

  final String? passwordHash;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateInput implements _i1.JsonSerializable {
  const UserUpdateInput({
    this.id,
    this.name,
    this.passwordHash,
    this.group,
  });

  factory UserUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final NullableStringFieldUpdateOperationsInput? passwordHash;

  final GroupUpdateOneRequiredWithoutUsersNestedInput? group;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateInput({
    this.id,
    this.name,
    this.groupId,
    this.passwordHash,
  });

  factory UserUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final StringFieldUpdateOperationsInput? groupId;

  final NullableStringFieldUpdateOperationsInput? passwordHash;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateManyInput implements _i1.JsonSerializable {
  const UserCreateManyInput({
    this.id,
    required this.name,
    required this.groupId,
    this.passwordHash,
  });

  factory UserCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateManyInputFromJson(json);

  final String? id;

  final String name;

  final String groupId;

  final String? passwordHash;

  @override
  Map<String, dynamic> toJson() => _$UserCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateManyMutationInput implements _i1.JsonSerializable {
  const UserUpdateManyMutationInput({
    this.id,
    this.name,
    this.passwordHash,
  });

  factory UserUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final NullableStringFieldUpdateOperationsInput? passwordHash;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateManyInput({
    this.id,
    this.name,
    this.groupId,
    this.passwordHash,
  });

  factory UserUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedUpdateManyInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final StringFieldUpdateOperationsInput? groupId;

  final NullableStringFieldUpdateOperationsInput? passwordHash;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class StringFilter implements _i1.JsonSerializable {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  factory StringFilter.fromJson(Map<String, dynamic> json) =>
      _$StringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringFilterToJson(this);
}

@_i1.jsonSerializable
class EnumGroupPermissionNullableListFilter implements _i1.JsonSerializable {
  const EnumGroupPermissionNullableListFilter({
    this.equals,
    this.has,
    this.hasEvery,
    this.hasSome,
    this.isEmpty,
  });

  factory EnumGroupPermissionNullableListFilter.fromJson(
          Map<String, dynamic> json) =>
      _$EnumGroupPermissionNullableListFilterFromJson(json);

  final Iterable<GroupPermission>? equals;

  final GroupPermission? has;

  final Iterable<GroupPermission>? hasEvery;

  final Iterable<GroupPermission>? hasSome;

  final bool? isEmpty;

  @override
  Map<String, dynamic> toJson() =>
      _$EnumGroupPermissionNullableListFilterToJson(this);
}

@_i1.jsonSerializable
class BoolFilter implements _i1.JsonSerializable {
  const BoolFilter({
    this.equals,
    this.not,
  });

  factory BoolFilter.fromJson(Map<String, dynamic> json) =>
      _$BoolFilterFromJson(json);

  final bool? equals;

  final NestedBoolFilter? not;

  @override
  Map<String, dynamic> toJson() => _$BoolFilterToJson(this);
}

@_i1.jsonSerializable
class UserListRelationFilter implements _i1.JsonSerializable {
  const UserListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory UserListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$UserListRelationFilterFromJson(json);

  final UserWhereInput? every;

  final UserWhereInput? some;

  final UserWhereInput? none;

  @override
  Map<String, dynamic> toJson() => _$UserListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class UserOrderByRelationAggregateInput implements _i1.JsonSerializable {
  const UserOrderByRelationAggregateInput({this.$count});

  factory UserOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$UserOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class GroupCountOrderByAggregateInput implements _i1.JsonSerializable {
  const GroupCountOrderByAggregateInput({
    this.id,
    this.name,
    this.permissions,
    this.allowLoginIfNoPasswordSet,
  });

  factory GroupCountOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$GroupCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? permissions;

  final SortOrder? allowLoginIfNoPasswordSet;

  @override
  Map<String, dynamic> toJson() =>
      _$GroupCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class GroupMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const GroupMaxOrderByAggregateInput({
    this.id,
    this.name,
    this.allowLoginIfNoPasswordSet,
  });

  factory GroupMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$GroupMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? allowLoginIfNoPasswordSet;

  @override
  Map<String, dynamic> toJson() => _$GroupMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class GroupMinOrderByAggregateInput implements _i1.JsonSerializable {
  const GroupMinOrderByAggregateInput({
    this.id,
    this.name,
    this.allowLoginIfNoPasswordSet,
  });

  factory GroupMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$GroupMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? allowLoginIfNoPasswordSet;

  @override
  Map<String, dynamic> toJson() => _$GroupMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class StringWithAggregatesFilter implements _i1.JsonSerializable {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StringWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$StringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$StringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class BoolWithAggregatesFilter implements _i1.JsonSerializable {
  const BoolWithAggregatesFilter({
    this.equals,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory BoolWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$BoolWithAggregatesFilterFromJson(json);

  final bool? equals;

  final NestedBoolWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedBoolFilter? $min;

  @JsonKey(name: r'_max')
  final NestedBoolFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$BoolWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class StringNullableFilter implements _i1.JsonSerializable {
  const StringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  factory StringNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$StringNullableFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringNullableFilterToJson(this);
}

@_i1.jsonSerializable
class GroupRelationFilter implements _i1.JsonSerializable {
  const GroupRelationFilter({
    this.$is,
    this.isNot,
  });

  factory GroupRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$GroupRelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final GroupWhereInput? $is;

  final GroupWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$GroupRelationFilterToJson(this);
}

@_i1.jsonSerializable
class UserCountOrderByAggregateInput implements _i1.JsonSerializable {
  const UserCountOrderByAggregateInput({
    this.id,
    this.name,
    this.groupId,
    this.passwordHash,
  });

  factory UserCountOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? groupId;

  final SortOrder? passwordHash;

  @override
  Map<String, dynamic> toJson() => _$UserCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const UserMaxOrderByAggregateInput({
    this.id,
    this.name,
    this.groupId,
    this.passwordHash,
  });

  factory UserMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? groupId;

  final SortOrder? passwordHash;

  @override
  Map<String, dynamic> toJson() => _$UserMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserMinOrderByAggregateInput implements _i1.JsonSerializable {
  const UserMinOrderByAggregateInput({
    this.id,
    this.name,
    this.groupId,
    this.passwordHash,
  });

  factory UserMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? groupId;

  final SortOrder? passwordHash;

  @override
  Map<String, dynamic> toJson() => _$UserMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class StringNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const StringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StringNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$StringNullableWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$StringNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class GroupCreatepermissionsInput implements _i1.JsonSerializable {
  const GroupCreatepermissionsInput({required this.set});

  factory GroupCreatepermissionsInput.fromJson(Map<String, dynamic> json) =>
      _$GroupCreatepermissionsInputFromJson(json);

  final Iterable<GroupPermission> set;

  @override
  Map<String, dynamic> toJson() => _$GroupCreatepermissionsInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateNestedManyWithoutGroupInput implements _i1.JsonSerializable {
  const UserCreateNestedManyWithoutGroupInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory UserCreateNestedManyWithoutGroupInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserCreateNestedManyWithoutGroupInputFromJson(json);

  final Iterable<UserCreateWithoutGroupInput>? create;

  final Iterable<UserCreateOrConnectWithoutGroupInput>? connectOrCreate;

  final UserCreateManyGroupInputEnvelope? createMany;

  final Iterable<UserWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$UserCreateNestedManyWithoutGroupInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedCreateNestedManyWithoutGroupInput
    implements _i1.JsonSerializable {
  const UserUncheckedCreateNestedManyWithoutGroupInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory UserUncheckedCreateNestedManyWithoutGroupInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUncheckedCreateNestedManyWithoutGroupInputFromJson(json);

  final Iterable<UserCreateWithoutGroupInput>? create;

  final Iterable<UserCreateOrConnectWithoutGroupInput>? connectOrCreate;

  final UserCreateManyGroupInputEnvelope? createMany;

  final Iterable<UserWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUncheckedCreateNestedManyWithoutGroupInputToJson(this);
}

@_i1.jsonSerializable
class StringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const StringFieldUpdateOperationsInput({this.set});

  factory StringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$StringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$StringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class GroupUpdatepermissionsInput implements _i1.JsonSerializable {
  const GroupUpdatepermissionsInput({
    this.set,
    this.push,
  });

  factory GroupUpdatepermissionsInput.fromJson(Map<String, dynamic> json) =>
      _$GroupUpdatepermissionsInputFromJson(json);

  final Iterable<GroupPermission>? set;

  final Iterable<GroupPermission>? push;

  @override
  Map<String, dynamic> toJson() => _$GroupUpdatepermissionsInputToJson(this);
}

@_i1.jsonSerializable
class BoolFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const BoolFieldUpdateOperationsInput({this.set});

  factory BoolFieldUpdateOperationsInput.fromJson(Map<String, dynamic> json) =>
      _$BoolFieldUpdateOperationsInputFromJson(json);

  final bool? set;

  @override
  Map<String, dynamic> toJson() => _$BoolFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateManyWithoutGroupNestedInput implements _i1.JsonSerializable {
  const UserUpdateManyWithoutGroupNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory UserUpdateManyWithoutGroupNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUpdateManyWithoutGroupNestedInputFromJson(json);

  final Iterable<UserCreateWithoutGroupInput>? create;

  final Iterable<UserCreateOrConnectWithoutGroupInput>? connectOrCreate;

  final Iterable<UserUpsertWithWhereUniqueWithoutGroupInput>? upsert;

  final UserCreateManyGroupInputEnvelope? createMany;

  final Iterable<UserWhereUniqueInput>? set;

  final Iterable<UserWhereUniqueInput>? disconnect;

  final Iterable<UserWhereUniqueInput>? delete;

  final Iterable<UserWhereUniqueInput>? connect;

  final Iterable<UserUpdateWithWhereUniqueWithoutGroupInput>? update;

  final Iterable<UserUpdateManyWithWhereWithoutGroupInput>? updateMany;

  final Iterable<UserScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUpdateManyWithoutGroupNestedInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateManyWithoutGroupNestedInput
    implements _i1.JsonSerializable {
  const UserUncheckedUpdateManyWithoutGroupNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory UserUncheckedUpdateManyWithoutGroupNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUncheckedUpdateManyWithoutGroupNestedInputFromJson(json);

  final Iterable<UserCreateWithoutGroupInput>? create;

  final Iterable<UserCreateOrConnectWithoutGroupInput>? connectOrCreate;

  final Iterable<UserUpsertWithWhereUniqueWithoutGroupInput>? upsert;

  final UserCreateManyGroupInputEnvelope? createMany;

  final Iterable<UserWhereUniqueInput>? set;

  final Iterable<UserWhereUniqueInput>? disconnect;

  final Iterable<UserWhereUniqueInput>? delete;

  final Iterable<UserWhereUniqueInput>? connect;

  final Iterable<UserUpdateWithWhereUniqueWithoutGroupInput>? update;

  final Iterable<UserUpdateManyWithWhereWithoutGroupInput>? updateMany;

  final Iterable<UserScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUncheckedUpdateManyWithoutGroupNestedInputToJson(this);
}

@_i1.jsonSerializable
class GroupCreateNestedOneWithoutUsersInput implements _i1.JsonSerializable {
  const GroupCreateNestedOneWithoutUsersInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory GroupCreateNestedOneWithoutUsersInput.fromJson(
          Map<String, dynamic> json) =>
      _$GroupCreateNestedOneWithoutUsersInputFromJson(json);

  final GroupCreateWithoutUsersInput? create;

  final GroupCreateOrConnectWithoutUsersInput? connectOrCreate;

  final GroupWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$GroupCreateNestedOneWithoutUsersInputToJson(this);
}

@_i1.jsonSerializable
class NullableStringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const NullableStringFieldUpdateOperationsInput({this.set});

  factory NullableStringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$NullableStringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$NullableStringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class GroupUpdateOneRequiredWithoutUsersNestedInput
    implements _i1.JsonSerializable {
  const GroupUpdateOneRequiredWithoutUsersNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  factory GroupUpdateOneRequiredWithoutUsersNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$GroupUpdateOneRequiredWithoutUsersNestedInputFromJson(json);

  final GroupCreateWithoutUsersInput? create;

  final GroupCreateOrConnectWithoutUsersInput? connectOrCreate;

  final GroupUpsertWithoutUsersInput? upsert;

  final GroupWhereUniqueInput? connect;

  final GroupUpdateWithoutUsersInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$GroupUpdateOneRequiredWithoutUsersNestedInputToJson(this);
}

@_i1.jsonSerializable
class NestedStringFilter implements _i1.JsonSerializable {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringFilterToJson(this);
}

@_i1.jsonSerializable
class NestedBoolFilter implements _i1.JsonSerializable {
  const NestedBoolFilter({
    this.equals,
    this.not,
  });

  factory NestedBoolFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedBoolFilterFromJson(json);

  final bool? equals;

  final NestedBoolFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedBoolFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedStringWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntFilter implements _i1.JsonSerializable {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntFilterToJson(this);
}

@_i1.jsonSerializable
class NestedBoolWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedBoolWithAggregatesFilter({
    this.equals,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedBoolWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedBoolWithAggregatesFilterFromJson(json);

  final bool? equals;

  final NestedBoolWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedBoolFilter? $min;

  @JsonKey(name: r'_max')
  final NestedBoolFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$NestedBoolWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringNullableFilter implements _i1.JsonSerializable {
  const NestedStringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringNullableFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedStringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedStringNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringNullableWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntNullableFilter implements _i1.JsonSerializable {
  const NestedIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntNullableFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntNullableFilterToJson(this);
}

@_i1.jsonSerializable
class UserCreateWithoutGroupInput implements _i1.JsonSerializable {
  const UserCreateWithoutGroupInput({
    this.id,
    required this.name,
    this.passwordHash,
  });

  factory UserCreateWithoutGroupInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateWithoutGroupInputFromJson(json);

  final String? id;

  final String name;

  final String? passwordHash;

  @override
  Map<String, dynamic> toJson() => _$UserCreateWithoutGroupInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedCreateWithoutGroupInput implements _i1.JsonSerializable {
  const UserUncheckedCreateWithoutGroupInput({
    this.id,
    required this.name,
    this.passwordHash,
  });

  factory UserUncheckedCreateWithoutGroupInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUncheckedCreateWithoutGroupInputFromJson(json);

  final String? id;

  final String name;

  final String? passwordHash;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUncheckedCreateWithoutGroupInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateOrConnectWithoutGroupInput implements _i1.JsonSerializable {
  const UserCreateOrConnectWithoutGroupInput({
    required this.where,
    required this.create,
  });

  factory UserCreateOrConnectWithoutGroupInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserCreateOrConnectWithoutGroupInputFromJson(json);

  final UserWhereUniqueInput where;

  final UserCreateWithoutGroupInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$UserCreateOrConnectWithoutGroupInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateManyGroupInputEnvelope implements _i1.JsonSerializable {
  const UserCreateManyGroupInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  factory UserCreateManyGroupInputEnvelope.fromJson(
          Map<String, dynamic> json) =>
      _$UserCreateManyGroupInputEnvelopeFromJson(json);

  final Iterable<UserCreateManyGroupInput> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() =>
      _$UserCreateManyGroupInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class UserUpsertWithWhereUniqueWithoutGroupInput
    implements _i1.JsonSerializable {
  const UserUpsertWithWhereUniqueWithoutGroupInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory UserUpsertWithWhereUniqueWithoutGroupInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUpsertWithWhereUniqueWithoutGroupInputFromJson(json);

  final UserWhereUniqueInput where;

  final UserUpdateWithoutGroupInput update;

  final UserCreateWithoutGroupInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUpsertWithWhereUniqueWithoutGroupInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateWithWhereUniqueWithoutGroupInput
    implements _i1.JsonSerializable {
  const UserUpdateWithWhereUniqueWithoutGroupInput({
    required this.where,
    required this.data,
  });

  factory UserUpdateWithWhereUniqueWithoutGroupInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUpdateWithWhereUniqueWithoutGroupInputFromJson(json);

  final UserWhereUniqueInput where;

  final UserUpdateWithoutGroupInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUpdateWithWhereUniqueWithoutGroupInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateManyWithWhereWithoutGroupInput implements _i1.JsonSerializable {
  const UserUpdateManyWithWhereWithoutGroupInput({
    required this.where,
    required this.data,
  });

  factory UserUpdateManyWithWhereWithoutGroupInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUpdateManyWithWhereWithoutGroupInputFromJson(json);

  final UserScalarWhereInput where;

  final UserUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUpdateManyWithWhereWithoutGroupInputToJson(this);
}

@_i1.jsonSerializable
class UserScalarWhereInput implements _i1.JsonSerializable {
  const UserScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.groupId,
    this.passwordHash,
  });

  factory UserScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$UserScalarWhereInputFromJson(json);

  final Iterable<UserScalarWhereInput>? AND;

  final Iterable<UserScalarWhereInput>? OR;

  final Iterable<UserScalarWhereInput>? NOT;

  final StringFilter? id;

  final StringFilter? name;

  final StringFilter? groupId;

  final StringNullableFilter? passwordHash;

  @override
  Map<String, dynamic> toJson() => _$UserScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class GroupCreateWithoutUsersInput implements _i1.JsonSerializable {
  const GroupCreateWithoutUsersInput({
    this.id,
    required this.name,
    this.permissions,
    this.allowLoginIfNoPasswordSet,
  });

  factory GroupCreateWithoutUsersInput.fromJson(Map<String, dynamic> json) =>
      _$GroupCreateWithoutUsersInputFromJson(json);

  final String? id;

  final String name;

  final Iterable<GroupPermission>? permissions;

  final bool? allowLoginIfNoPasswordSet;

  @override
  Map<String, dynamic> toJson() => _$GroupCreateWithoutUsersInputToJson(this);
}

@_i1.jsonSerializable
class GroupUncheckedCreateWithoutUsersInput implements _i1.JsonSerializable {
  const GroupUncheckedCreateWithoutUsersInput({
    this.id,
    required this.name,
    this.permissions,
    this.allowLoginIfNoPasswordSet,
  });

  factory GroupUncheckedCreateWithoutUsersInput.fromJson(
          Map<String, dynamic> json) =>
      _$GroupUncheckedCreateWithoutUsersInputFromJson(json);

  final String? id;

  final String name;

  final Iterable<GroupPermission>? permissions;

  final bool? allowLoginIfNoPasswordSet;

  @override
  Map<String, dynamic> toJson() =>
      _$GroupUncheckedCreateWithoutUsersInputToJson(this);
}

@_i1.jsonSerializable
class GroupCreateOrConnectWithoutUsersInput implements _i1.JsonSerializable {
  const GroupCreateOrConnectWithoutUsersInput({
    required this.where,
    required this.create,
  });

  factory GroupCreateOrConnectWithoutUsersInput.fromJson(
          Map<String, dynamic> json) =>
      _$GroupCreateOrConnectWithoutUsersInputFromJson(json);

  final GroupWhereUniqueInput where;

  final GroupCreateWithoutUsersInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$GroupCreateOrConnectWithoutUsersInputToJson(this);
}

@_i1.jsonSerializable
class GroupUpsertWithoutUsersInput implements _i1.JsonSerializable {
  const GroupUpsertWithoutUsersInput({
    required this.update,
    required this.create,
  });

  factory GroupUpsertWithoutUsersInput.fromJson(Map<String, dynamic> json) =>
      _$GroupUpsertWithoutUsersInputFromJson(json);

  final GroupUpdateWithoutUsersInput update;

  final GroupCreateWithoutUsersInput create;

  @override
  Map<String, dynamic> toJson() => _$GroupUpsertWithoutUsersInputToJson(this);
}

@_i1.jsonSerializable
class GroupUpdateWithoutUsersInput implements _i1.JsonSerializable {
  const GroupUpdateWithoutUsersInput({
    this.id,
    this.name,
    this.permissions,
    this.allowLoginIfNoPasswordSet,
  });

  factory GroupUpdateWithoutUsersInput.fromJson(Map<String, dynamic> json) =>
      _$GroupUpdateWithoutUsersInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final Iterable<GroupPermission>? permissions;

  final BoolFieldUpdateOperationsInput? allowLoginIfNoPasswordSet;

  @override
  Map<String, dynamic> toJson() => _$GroupUpdateWithoutUsersInputToJson(this);
}

@_i1.jsonSerializable
class GroupUncheckedUpdateWithoutUsersInput implements _i1.JsonSerializable {
  const GroupUncheckedUpdateWithoutUsersInput({
    this.id,
    this.name,
    this.permissions,
    this.allowLoginIfNoPasswordSet,
  });

  factory GroupUncheckedUpdateWithoutUsersInput.fromJson(
          Map<String, dynamic> json) =>
      _$GroupUncheckedUpdateWithoutUsersInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final Iterable<GroupPermission>? permissions;

  final BoolFieldUpdateOperationsInput? allowLoginIfNoPasswordSet;

  @override
  Map<String, dynamic> toJson() =>
      _$GroupUncheckedUpdateWithoutUsersInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateManyGroupInput implements _i1.JsonSerializable {
  const UserCreateManyGroupInput({
    this.id,
    required this.name,
    this.passwordHash,
  });

  factory UserCreateManyGroupInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateManyGroupInputFromJson(json);

  final String? id;

  final String name;

  final String? passwordHash;

  @override
  Map<String, dynamic> toJson() => _$UserCreateManyGroupInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateWithoutGroupInput implements _i1.JsonSerializable {
  const UserUpdateWithoutGroupInput({
    this.id,
    this.name,
    this.passwordHash,
  });

  factory UserUpdateWithoutGroupInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateWithoutGroupInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final NullableStringFieldUpdateOperationsInput? passwordHash;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateWithoutGroupInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateWithoutGroupInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateWithoutGroupInput({
    this.id,
    this.name,
    this.passwordHash,
  });

  factory UserUncheckedUpdateWithoutGroupInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUncheckedUpdateWithoutGroupInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final NullableStringFieldUpdateOperationsInput? passwordHash;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUncheckedUpdateWithoutGroupInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateManyWithoutUsersInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateManyWithoutUsersInput({
    this.id,
    this.name,
    this.passwordHash,
  });

  factory UserUncheckedUpdateManyWithoutUsersInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUncheckedUpdateManyWithoutUsersInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final NullableStringFieldUpdateOperationsInput? passwordHash;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUncheckedUpdateManyWithoutUsersInputToJson(this);
}

@_i1.jsonSerializable
class Group implements _i1.JsonSerializable {
  const Group({
    required this.id,
    required this.name,
    this.permissions,
    required this.allowLoginIfNoPasswordSet,
  });

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);

  final String id;

  final String name;

  final Iterable<GroupPermission>? permissions;

  final bool allowLoginIfNoPasswordSet;

  @override
  Map<String, dynamic> toJson() => _$GroupToJson(this);
}

@_i1.jsonSerializable
class User implements _i1.JsonSerializable {
  const User({
    required this.id,
    required this.name,
    required this.groupId,
    this.passwordHash,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  final String id;

  final String name;

  final String groupId;

  final String? passwordHash;

  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

class GroupFluent<T> extends _i1.PrismaFluent<T> {
  const GroupFluent(
    super.original,
    super.$query,
  );

  Future<Iterable<User>?> users({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'users',
          fields: fields,
          args: args,
        )
      ]),
      key: r'users',
    );
    final fields = UserScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> users) =>
        users.map((Map users) => User.fromJson(users.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  GroupCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return GroupCountOutputType(query);
  }
}

class UserFluent<T> extends _i1.PrismaFluent<T> {
  const UserFluent(
    super.original,
    super.$query,
  );

  GroupFluent<Group> group() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'group',
          fields: fields,
        )
      ]),
      key: r'group',
    );
    final future = query(GroupScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Group.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Group)'));
    return GroupFluent<Group>(
      future,
      query,
    );
  }
}

extension GroupModelDelegateExtension on _i1.ModelDelegate<Group> {
  GroupFluent<Group?> findUnique({required GroupWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueGroup',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueGroup',
    );
    final future = query(GroupScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Group.fromJson(json.cast<String, dynamic>()) : null);
    return GroupFluent<Group?>(
      future,
      query,
    );
  }

  GroupFluent<Group> findUniqueOrThrow({required GroupWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueGroupOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueGroupOrThrow',
    );
    final future = query(GroupScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Group.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Group)'));
    return GroupFluent<Group>(
      future,
      query,
    );
  }

  GroupFluent<Group?> findFirst({
    GroupWhereInput? where,
    Iterable<GroupOrderByWithRelationInput>? orderBy,
    GroupWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<GroupScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstGroup',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstGroup',
    );
    final future = query(GroupScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Group.fromJson(json.cast<String, dynamic>()) : null);
    return GroupFluent<Group?>(
      future,
      query,
    );
  }

  GroupFluent<Group> findFirstOrThrow({
    GroupWhereInput? where,
    Iterable<GroupOrderByWithRelationInput>? orderBy,
    GroupWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<GroupScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstGroupOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstGroupOrThrow',
    );
    final future = query(GroupScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Group.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Group)'));
    return GroupFluent<Group>(
      future,
      query,
    );
  }

  Future<Iterable<Group>> findMany({
    GroupWhereInput? where,
    Iterable<GroupOrderByWithRelationInput>? orderBy,
    GroupWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<GroupScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyGroup',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyGroup',
    );
    final fields = GroupScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyGroup) => findManyGroup
        .map((Map findManyGroup) => Group.fromJson(findManyGroup.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  GroupFluent<Group> create({required GroupCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneGroup',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneGroup',
    );
    final future = query(GroupScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Group.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Group)'));
    return GroupFluent<Group>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<GroupCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyGroup',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyGroup',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyGroup) =>
        AffectedRowsOutput.fromJson(createManyGroup.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  GroupFluent<Group?> update({
    required GroupUpdateInput data,
    required GroupWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneGroup',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneGroup',
    );
    final future = query(GroupScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Group.fromJson(json.cast<String, dynamic>()) : null);
    return GroupFluent<Group?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required GroupUpdateManyMutationInput data,
    GroupWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyGroup',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyGroup',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyGroup) =>
        AffectedRowsOutput.fromJson(updateManyGroup.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  GroupFluent<Group> upsert({
    required GroupWhereUniqueInput where,
    required GroupCreateInput create,
    required GroupUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneGroup',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneGroup',
    );
    final future = query(GroupScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Group.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Group)'));
    return GroupFluent<Group>(
      future,
      query,
    );
  }

  GroupFluent<Group?> delete({required GroupWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneGroup',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneGroup',
    );
    final future = query(GroupScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Group.fromJson(json.cast<String, dynamic>()) : null);
    return GroupFluent<Group?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({GroupWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyGroup',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyGroup',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyGroup) =>
        AffectedRowsOutput.fromJson(deleteManyGroup.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateGroup aggregate({
    GroupWhereInput? where,
    Iterable<GroupOrderByWithRelationInput>? orderBy,
    GroupWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateGroup',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateGroup',
    );
    return AggregateGroup(query);
  }

  Future<Iterable<GroupGroupByOutputType>> groupBy({
    GroupWhereInput? where,
    Iterable<GroupOrderByWithAggregationInput>? orderBy,
    required Iterable<GroupScalarFieldEnum> by,
    GroupScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByGroup',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByGroup',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByGroup) =>
        groupByGroup.map((Map groupByGroup) =>
            GroupGroupByOutputType.fromJson(groupByGroup.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension UserModelDelegateExtension on _i1.ModelDelegate<User> {
  UserFluent<User?> findUnique({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  UserFluent<User> findUniqueOrThrow({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueUserOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueUserOrThrow',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  UserFluent<User?> findFirst({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  UserFluent<User> findFirstOrThrow({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstUserOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstUserOrThrow',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  Future<Iterable<User>> findMany({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyUser',
    );
    final fields = UserScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyUser) => findManyUser
        .map((Map findManyUser) => User.fromJson(findManyUser.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User> create({required UserCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<UserCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyUser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyUser) =>
        AffectedRowsOutput.fromJson(createManyUser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User?> update({
    required UserUpdateInput data,
    required UserWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required UserUpdateManyMutationInput data,
    UserWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyUser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyUser) =>
        AffectedRowsOutput.fromJson(updateManyUser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User> upsert({
    required UserWhereUniqueInput where,
    required UserCreateInput create,
    required UserUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  UserFluent<User?> delete({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({UserWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyUser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyUser) =>
        AffectedRowsOutput.fromJson(deleteManyUser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateUser aggregate({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateUser',
    );
    return AggregateUser(query);
  }

  Future<Iterable<UserGroupByOutputType>> groupBy({
    UserWhereInput? where,
    Iterable<UserOrderByWithAggregationInput>? orderBy,
    required Iterable<UserScalarFieldEnum> by,
    UserScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByUser',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByUser) => groupByUser.map((Map groupByUser) =>
        UserGroupByOutputType.fromJson(groupByUser.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

@_i1.jsonSerializable
class GroupGroupByOutputType implements _i1.JsonSerializable {
  const GroupGroupByOutputType({
    this.id,
    this.name,
    this.permissions,
    this.allowLoginIfNoPasswordSet,
  });

  factory GroupGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$GroupGroupByOutputTypeFromJson(json);

  final String? id;

  final String? name;

  final Iterable<GroupPermission>? permissions;

  final bool? allowLoginIfNoPasswordSet;

  @override
  Map<String, dynamic> toJson() => _$GroupGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class UserGroupByOutputType implements _i1.JsonSerializable {
  const UserGroupByOutputType({
    this.id,
    this.name,
    this.groupId,
    this.passwordHash,
  });

  factory UserGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$UserGroupByOutputTypeFromJson(json);

  final String? id;

  final String? name;

  final String? groupId;

  final String? passwordHash;

  @override
  Map<String, dynamic> toJson() => _$UserGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AffectedRowsOutput implements _i1.JsonSerializable {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map<String, dynamic> json) =>
      _$AffectedRowsOutputFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() => _$AffectedRowsOutputToJson(this);
}

class AggregateGroup {
  const AggregateGroup(this.$query);

  final _i1.PrismaFluentQuery $query;

  GroupCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return GroupCountAggregateOutputType(query);
  }

  GroupMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return GroupMinAggregateOutputType(query);
  }

  GroupMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return GroupMaxAggregateOutputType(query);
  }
}

class AggregateUser {
  const AggregateUser(this.$query);

  final _i1.PrismaFluentQuery $query;

  UserCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return UserCountAggregateOutputType(query);
  }

  UserMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return UserMinAggregateOutputType(query);
  }

  UserMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return UserMaxAggregateOutputType(query);
  }
}

class GroupCountOutputType {
  const GroupCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> users() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'users',
          fields: fields,
        )
      ]),
      key: r'users',
    );
    return query(const []).then((value) => (value as int));
  }
}

class GroupCountAggregateOutputType {
  const GroupCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> permissions() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'permissions',
          fields: fields,
        )
      ]),
      key: r'permissions',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> allowLoginIfNoPasswordSet() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'allowLoginIfNoPasswordSet',
          fields: fields,
        )
      ]),
      key: r'allowLoginIfNoPasswordSet',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class GroupMinAggregateOutputType {
  const GroupMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<bool?> allowLoginIfNoPasswordSet() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'allowLoginIfNoPasswordSet',
          fields: fields,
        )
      ]),
      key: r'allowLoginIfNoPasswordSet',
    );
    return query(const []).then((value) => (value as bool?));
  }
}

class GroupMaxAggregateOutputType {
  const GroupMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<bool?> allowLoginIfNoPasswordSet() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'allowLoginIfNoPasswordSet',
          fields: fields,
        )
      ]),
      key: r'allowLoginIfNoPasswordSet',
    );
    return query(const []).then((value) => (value as bool?));
  }
}

class UserCountAggregateOutputType {
  const UserCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> groupId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupId',
          fields: fields,
        )
      ]),
      key: r'groupId',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> passwordHash() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'passwordHash',
          fields: fields,
        )
      ]),
      key: r'passwordHash',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class UserMinAggregateOutputType {
  const UserMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> groupId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupId',
          fields: fields,
        )
      ]),
      key: r'groupId',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> passwordHash() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'passwordHash',
          fields: fields,
        )
      ]),
      key: r'passwordHash',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class UserMaxAggregateOutputType {
  const UserMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> groupId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupId',
          fields: fields,
        )
      ]),
      key: r'groupId',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> passwordHash() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'passwordHash',
          fields: fields,
        )
      ]),
      key: r'passwordHash',
    );
    return query(const []).then((value) => (value as String?));
  }
}

@JsonSerializable(
  createFactory: false,
  createToJson: true,
  includeIfNull: false,
)
class Datasources implements _i1.JsonSerializable {
  const Datasources({this.db});

  final String? db;

  @override
  Map<String, dynamic> toJson() => _$DatasourcesToJson(this);
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient._internal(
    _i3.Engine engine, {
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  })  : _engine = engine,
        _headers = headers,
        _transaction = transaction,
        super(
          engine,
          headers: headers,
          transaction: transaction,
        );

  factory PrismaClient({
    Datasources? datasources,
    Iterable<_i4.Event>? stdout,
    Iterable<_i4.Event>? event,
  }) {
    final logger = _i4.Logger(
      stdout: stdout,
      event: event,
    );
    final engine = _i5.BinaryEngine(
      logger: logger,
      schema:
          r'Z2VuZXJhdG9yIGNsaWVudCB7CiAgcHJvdmlkZXIgPSAiZGFydCBydW4gb3JtIgogIG91dHB1dCAgID0gIi4uL2xpYi9zcmMvc3RydWN0dXJlL3ByaXNtYS9jbGllbnQuZGFydCIKfQoKZGF0YXNvdXJjZSBkYiB7CiAgcHJvdmlkZXIgPSAicG9zdGdyZXNxbCIKICB1cmwgICAgICA9IGVudigiREFUQUJBU0VfVVJMIikKfQoKZW51bSBHcm91cFBlcm1pc3Npb24gewogIEJyb2FkY2FzdE1lc3NhZ2UKICBCcm9hZGNhc3RFeGVjdXRlCn0KCm1vZGVsIEdyb3VwIHsKICBpZCAgICAgICAgICAgICAgICAgICAgICAgIFN0cmluZyAgICAgICAgICAgIEBpZCBAZGVmYXVsdCh1dWlkKCkpCiAgbmFtZSAgICAgICAgICAgICAgICAgICAgICBTdHJpbmcgICAgICAgICAgICBAdW5pcXVlCiAgcGVybWlzc2lvbnMgICAgICAgICAgICAgICBHcm91cFBlcm1pc3Npb25bXSBAZGVmYXVsdChbXSkKICBhbGxvd0xvZ2luSWZOb1Bhc3N3b3JkU2V0IEJvb2xlYW4gICAgICAgICAgIEBkZWZhdWx0KGZhbHNlKQogIHVzZXJzICAgICAgICAgICAgICAgICAgICAgVXNlcltdCgogIEBAbWFwKCJncm91cHMiKQp9Cgptb2RlbCBVc2VyIHsKICBpZCAgICAgICAgICAgU3RyaW5nICBAaWQgQGRlZmF1bHQodXVpZCgpKQogIG5hbWUgICAgICAgICBTdHJpbmcgIEB1bmlxdWUKICBncm91cCAgICAgICAgR3JvdXAgICBAcmVsYXRpb24oZmllbGRzOiBbZ3JvdXBJZF0sIHJlZmVyZW5jZXM6IFtpZF0pCiAgZ3JvdXBJZCAgICAgIFN0cmluZwogIHBhc3N3b3JkSGFzaCBTdHJpbmc/CgogIEBAbWFwKCJ1c2VycyIpCn0K',
      datasources: datasources?.toJson().cast() ?? const {},
      executable:
          r'D:\Documents\GitHub\Kasefuchs\crosspipe-server\node_modules\prisma\query-engine-windows.exe',
    );
    return PrismaClient._internal(engine);
  }

  final _i3.Engine _engine;

  final _i3.QueryEngineRequestHeaders? _headers;

  final _i3.TransactionInfo? _transaction;

  @override
  PrismaClient copyWith({
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  }) =>
      PrismaClient._internal(
        _engine,
        headers: headers ?? _headers,
        transaction: transaction ?? _transaction,
      );
  _i1.ModelDelegate<Group> get group => _i1.ModelDelegate<Group>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
  _i1.ModelDelegate<User> get user => _i1.ModelDelegate<User>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
}
