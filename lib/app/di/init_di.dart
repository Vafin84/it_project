import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:it_project/app/di/init_di.config.dart';

final locator = GetIt.instance;

@InjectableInit()
void initDi(String env) {
  $initGetIt(locator, environment: env);
}
