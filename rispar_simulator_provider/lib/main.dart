import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'app/app_module.dart';

void main() {
  //runApp(const AppModule());
  runApp(DevicePreview(builder: (_) => const AppModule()));
}
