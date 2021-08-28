
import 'package:dio/dio.dart';

class TestHelpers {
  static final TestHelpers _instance = TestHelpers._internal();
  factory TestHelpers() => _instance;
  TestHelpers._internal();

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
