enum ServerExceptionType {
  success,
  unauthorized,
  forbidden,
  notFound,
  unprocessableEntity,
  tooManyRequests,
  internalServerError,
  serviceUnavailable,
}

const _errorCodeToType = {
  200: ServerExceptionType.success,
  401: ServerExceptionType.unauthorized,
  403: ServerExceptionType.forbidden,
  404: ServerExceptionType.notFound,
  422: ServerExceptionType.unprocessableEntity,
  429: ServerExceptionType.tooManyRequests,
  500: ServerExceptionType.internalServerError,
  503: ServerExceptionType.serviceUnavailable,
};

class ServerException implements Exception {
  ServerException({
    required this.code,
    this.message,
  }) : type = _errorCodeToType[code]!;

  factory ServerException.fromJson(Map<String, dynamic> json) {
    return ServerException(
      code: json['code'],
      message: json['message'],
    );
  }

  final ServerExceptionType type;
  final int code;
  final String? message;
}
