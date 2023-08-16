import 'package:myapp/utils/exceptions.dart';

class HiveReadException extends Exceptions {
  HiveReadException([String? message])
      : super(message, 'Failed to read resource from Hive db');
}

class HiveWriteException extends Exceptions {
  HiveWriteException([String? message])
      : super(message, 'Failed to write resource to the Hive db');
}

class AssetsReadException extends Exceptions {
  AssetsReadException([String? message])
      : super(message, 'Failed to read resource from assets');
}

class NoActiveSessionException extends HiveReadException {
  NoActiveSessionException() : super('Active session does not exist');
}

class MultipleActiveSessionException extends HiveReadException {
  MultipleActiveSessionException() : super('Multiple active sessions exist');
}

class ResponseFormattingException<T> extends Exceptions {
  ResponseFormattingException([String? message])
      : super(
          message,
          'Could not parse given value to expected type of: `$T`',
        );
}

class NoUserDataFoundException extends Exceptions {
  NoUserDataFoundException() : super('User data not found in cache');
}

class ConfigurationLimitReachedException extends Exceptions {
  ConfigurationLimitReachedException()
      : super('Profile already has maximum number of allowed configuration');
}
