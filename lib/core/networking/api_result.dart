import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart'; // ✅ ضروري
// لو هتستخدم JsonSerializable أو toJson/fromJson

@freezed
class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.failure(String message) = Failure<T>;
}
