import 'package:football_app/domain/entity/story/story.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'module.freezed.dart';
part 'module.g.dart';

@freezed
sealed class Module with _$Module {
  const factory Module({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title') required String? title,
    @JsonKey(name: 'type') required String? type,
    @JsonKey(name: 'stories') required List<Story> stories,
    @Default(false) bool isExpanded,
  }) = _Module;

  factory Module.fromJson(Map<String, Object?> json) => _$ModuleFromJson(json);
}
