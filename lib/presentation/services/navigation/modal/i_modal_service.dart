import 'package:flutter/material.dart';

abstract class IModalService {
  void showSlidePanel({Widget panel});

  void closeSlidePanel();
}
