
import 'package:flutter/material.dart';
import 'package:wanikani_flutter/injection.dart';

import 'core/presentation/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();

  runApp(App());
}
