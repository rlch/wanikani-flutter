import 'package:flutter_test/flutter_test.dart';

import 'helpers/test_helper.dart';

void main() {
  final helpers = TestHelpers();

  group('config', () {
    test('TestHelpers() returns an identical singleton', () {
      expect(helpers, equals(TestHelpers()));
    });

    test('TestHelpers().apiToken loads apiToken from config.dart', () async {
      final apiToken = TestHelpers.apiToken;
      expect(apiToken, TypeMatcher<String>());
    });

    test('dio.options.headers returns the expected headers', () {
      final dio = helpers.remoteDS.dio;
      final apiToken = TestHelpers.apiToken;
      expect(
        dio.options.headers['Wanikani-Revision'],
        equals('20170710'),
      );
      expect(
        dio.options.headers['Authorization'],
        equals('Bearer $apiToken'),
      );
    });
  });
}
