import 'package:flutter_test/flutter_test.dart';
import 'package:wanikani_flutter/core/data/models/collection.dart';
import 'package:wanikani_flutter/core/data/models/resources/assignment.dart';

import '../helpers/test_helper.dart';

void main() {
  final helpers = TestHelpers();
  group('Assignments', () {
    test('getAll() returns Collection<Assignment>', () async {
      final allAssignments = await helpers.remote.assignments.getAll();
      print(allAssignments);
      expect(allAssignments, TypeMatcher<CollectionModel<AssignmentModel>>());
    });
  });
}
