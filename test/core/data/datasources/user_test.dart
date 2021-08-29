import 'package:flutter_test/flutter_test.dart';
import 'package:wanikani_flutter/core/data/models/resource.dart';
import 'package:wanikani_flutter/core/data/models/resources/user.dart';

import '../../../helpers/test_helper.dart';

void main() {
  final helpers = TestHelpers();
  group('Users', () {
    test('getInformation() returns UserModel', () async {
      final user = await helpers.remoteDS.user.getInformation();
      expect(user, TypeMatcher<ResourceModel<UserModel>>());
    });
  });
}
