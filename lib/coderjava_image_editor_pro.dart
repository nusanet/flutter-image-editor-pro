
import 'dart:async';

import 'package:flutter/services.dart';

class CoderjavaImageEditorPro {
  static const MethodChannel _channel =
      const MethodChannel('coderjava_image_editor_pro');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
