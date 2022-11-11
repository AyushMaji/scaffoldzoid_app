class ApiResult {
  final dynamic data;
  final String message;

  ApiResult({this.data, required this.message});

  factory ApiResult.success(dynamic data) {
    return ApiResult(data: data, message: '');
  }

  factory ApiResult.failure(dynamic error) {
    return ApiResult(message: error.toString());
  }
}
