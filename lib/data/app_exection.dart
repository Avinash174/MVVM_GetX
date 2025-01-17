class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);

  String toString() {
    return '$_prefix$_message';
  }
}

class InternetException extends AppExceptions {
  InternetException([String? message]) : super(message, 'No Internet');
}

class RequestTimeOut extends AppExceptions {
  RequestTimeOut([String? message]) : super(message, 'Internal Serval Error');
}

class InvalidUrlExeption extends AppExceptions {
  InvalidUrlExeption([String? message]) : super(message, 'Invalid Url');
}

class FetchDataExeption extends AppExceptions {
  FetchDataExeption([String? message])
      : super(message, 'Error while communication');
}
