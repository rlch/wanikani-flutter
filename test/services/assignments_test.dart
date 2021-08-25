import 'package:flutter_test/flutter_test.dart';
import 'package:wanikani_flutter/interfaces/collection.dart';
import 'package:wanikani_flutter/models/assignment.dart';

import '../helpers/test_helper.dart';

void main() async {
  final helpers = await TestHelpers.initializedInstance;

  group('Assignments', () {
    test('getAll() returns Collection<Assignment>', () async {
      final allAssignments = await helpers.services.dio.get('https://api.wanikani.com/v2/assignments?available_after=2017-11-11T10:42:00Z');
      expect(allAssignments, TypeMatcher<Collection<Assignment>>());
    });
  });
}
