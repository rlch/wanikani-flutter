import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'injection.config.dart';

final gi = GetIt.instance;

@InjectableInit(preferRelativeImports: true)
void configureInjection({
  String environment = Env.prod,
}) =>
    $initGetIt(gi, environment: environment);

abstract class Env {
  static const dev = 'dev';
  static const prod = 'prod';
}
