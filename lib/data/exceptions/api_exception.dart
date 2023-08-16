class ApiException implements Exception {
  ApiException({
    required this.message,
    required this.statusCode,
    this.serverErrorMessage,
  });

  final String message;
  final int statusCode;
  final String? serverErrorMessage;

  @override
  String toString() {
    return {
      'message': message,
      'statusCode': statusCode,
      'serverErrorMessage': serverErrorMessage
    }.toString();
  }
}
