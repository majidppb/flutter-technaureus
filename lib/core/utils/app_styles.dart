import 'dart:ui';

import 'package:flutter/material.dart';

sealed class AppStyles {
// ===== Blur filter
  static final blurFilter = ImageFilter.blur(
    sigmaX: 10.0,
    sigmaY: 10.0,
  );

// ===== Padding
  static const hPadding10 = EdgeInsets.symmetric(horizontal: 10.0);
  static const hPadding30 = EdgeInsets.symmetric(horizontal: 30);
  static const padding5 = EdgeInsets.all(5.0);
  static const padding8 = EdgeInsets.all(8.0);

// ===== Border Radius
  static const borderRadius8 = BorderRadius.all(Radius.circular(8));
  static const borderRadius16 = BorderRadius.all(Radius.circular(16));
  static const borderRadius24 = BorderRadius.all(Radius.circular(24));
  static const borderRadius30 = BorderRadius.all(Radius.circular(30));

// ===== Height
  static const height5 = SizedBox(height: 5);
  static const height10 = SizedBox(height: 10);
  static const height30 = SizedBox(height: 30);
  static const height70 = SizedBox(height: 70);
}
