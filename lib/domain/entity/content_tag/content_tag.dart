import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_tag.freezed.dart';
part 'content_tag.g.dart';

@freezed
class ContentTag with _$ContentTag {
  const factory ContentTag({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'type') required String type,
  }) = _ContentTag;

  factory ContentTag.fromJson(Map<String, Object?> json) =>
      _$ContentTagFromJson(json);
}
