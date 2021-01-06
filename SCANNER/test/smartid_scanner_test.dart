import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smartid_scanner/smartid_scanner.dart';

void main() {
  const MethodChannel channel = MethodChannel('smartid_scanner');

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
    expect(await SmartidScanner.platformVersion, '42');
  });
}
