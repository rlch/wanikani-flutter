import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wanikani_flutter/services/wanikani_services.dart';

class TestHelpers {
  static final TestHelpers _instance = TestHelpers._internal();
  factory TestHelpers() => _instance;
  TestHelpers._internal();

  static Future<TestHelpers> get initializedInstance async {
    await _instance.ensureInitialized();
    return _instance;
  }

  bool initialized = false;
  Future<void> ensureInitialized() async {
    if (initialized) return;
    initialized = true;

    TestWidgetsFlutterBinding.ensureInitialized();
    final rawConfig = await rootBundle.loadString('config.json');
    final _apiToken = jsonDecode(rawConfig)['apiToken'];
    if (_apiToken == null) {
      throw Exception('key "apiToken" not found in config.json');
    }
    apiToken = _apiToken;
    services = TestWaniKaniServices(apiToken: apiToken);
  }

  late final String apiToken;
  late final TestWaniKaniServices services;
}

class TestWaniKaniServices extends WaniKaniServices {
  TestWaniKaniServices({required String apiToken, Dio? dio})
      : super(apiToken: apiToken) {
    /// adapter = DioAdapter(dio: this.dio);
  }

  /// late final DioAdapter adapter;
}
