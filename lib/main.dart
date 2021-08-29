
import 'package:flutter/material.dart';
import 'package:wanikani_flutter/injection.dart';

import 'core/presentation/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();

  runApp(App());
}
