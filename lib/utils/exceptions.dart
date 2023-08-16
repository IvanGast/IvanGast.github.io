/// This file contains custom app exceptions
class Exceptions implements Exception {
  Exceptions([this._message, this._prefix]);

  final String? _message;
  final String? _prefix;

  @override
  String toString() {
    return '$_prefix: $_message';
  }
}

class MisConfigurationException extends Exceptions {
  MisConfigurationException([String? message])
      : super(message, 'MIS_CONFIG_EX');
}

class NoChoiceException extends Exceptions {
  NoChoiceException([String? message]) : super(message, 'NO_CHOICE_EX');
}
