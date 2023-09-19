import 'package:freezed_annotation/freezed_annotation.dart';

part 'reading.freezed.dart';
part 'reading.g.dart';

@freezed
class Reading with _$Reading {
  const factory Reading({
    @JsonKey(name: 'url') required String url,
    @JsonKey(name: 'voice') required String voice,
    @JsonKey(name: 'durationMs') required int durationMs,
  }) = _Reading;

  factory Reading.fromJson(Map<String, Object?> json) =>
      _$ReadingFromJson(json);
}
