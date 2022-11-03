import 'package:it_project/app/ui/main_app_builder.dart';
import 'package:it_project/app/ui/main_app_runner.dart';

void main() {
  const env = String.fromEnvironment("env", defaultValue: "prod");
  final runner = MainAppRunner(env);
  final builder = MainAppBuilder();
  runner.run(builder);
}
