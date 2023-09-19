import 'package:football_app/domain/entity/module/module.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'module_list.freezed.dart';
part 'module_list.g.dart';

@freezed
class ModuleList with _$ModuleList {
  const factory ModuleList({
    @JsonKey(name: 'modules') required List<Module> modules,
  }) = _ModuleList;

  factory ModuleList.fromJson(Map<String, Object?> json) =>
      _$ModuleListFromJson(json);
}
