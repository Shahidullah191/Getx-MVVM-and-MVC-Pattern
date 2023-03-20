class AppException implements Exception {
  final String message;
  final String prefix;
  final String? code;

  AppException([this.message = '', this.prefix = '', this.code]);

  @override
  String toString() {
    return '$prefix$message';
  }
}

class InternetException extends AppException {
  InternetException([String message = '']) : super(message, '');
}

class RequestTimeOutException extends AppException {
  RequestTimeOutException([String message = '']) : super(message, '');
}

class ServerException extends AppException {
  ServerException([String message = '']) : super(message, '');
}
