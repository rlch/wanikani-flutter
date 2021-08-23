import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

Future<String> getApiToken() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  final rawConfig = await rootBundle.loadString('config.json');
  final apiToken = jsonDecode(rawConfig)['apiToken'];
  if (apiToken == null) {
    throw Exception('key "apiToken" not found in config.json');
  }
  return apiToken;
}

void main() {
  group('config', () {
    test('getApiToken() loads apiToken from config.json', () async {
      final apiToken = await getApiToken();
      expect(apiToken, TypeMatcher<String>());
    });
  });
}
