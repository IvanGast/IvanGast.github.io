import 'package:flutter/material.dart';

abstract class IDialogService {
  void openDialog({
    required Widget child,
  });
}