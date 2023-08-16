class ValidationError<T> {
  ValidationError({
    required this.propertyName,
    required this.errorMessage,
  });

  final String propertyName;

  final String errorMessage;
}
