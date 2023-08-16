import 'package:myapp/data/exceptions/validation_error.dart';

class ResponseValidationException<T> implements Exception {
  ResponseValidationException({
    this.type = 'Error during validation of response.',
    required this.details,
  });

  final String type;

  final String details;

  final List<ValidationError<T>> errors = [];
}