import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:coderjava_image_editor_pro/coderjava_image_editor_pro.dart';

void main() {
  const MethodChannel channel = MethodChannel('coderjava_image_editor_pro');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await CoderjavaImageEditorPro.platformVersion, '42');
  });
}
