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
  InternetException([String message = ''])
      : super(message, 'No Internet Connection');
}

class RequestTimeOutException extends AppException {
  RequestTimeOutException([String message = ''])
      : super(message, 'Request Time Out');
}

class ServerException extends AppException {
  ServerException([String message = '']) : super(message, 'Server Error');
}

class InvalidUrlException extends AppException {
  InvalidUrlException([String message = '']) : super(message, 'Invalid Url');
}

class FetchDataException extends AppException {
  FetchDataException([String message = ''])
      : super(message, 'Error occured while Communication with Server');
}
