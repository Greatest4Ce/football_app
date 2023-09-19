import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_list_response.freezed.dart';
part 'news_list_response.g.dart';

@freezed
sealed class NewsListResponse with _$NewsListResponse {
  const factory NewsListResponse({
    @JsonKey(name: 'title') required String? title,
    @JsonKey(name: 'modules') required List<Map<String, Object?>>? modules,
  }) = _NewsListResponse;

  factory NewsListResponse.fromJson(Map<String, Object?> json) =>
      _$NewsListResponseFromJson(json);
}
