import 'package:it_project/app/domain/app_builder.dart';

abstract class AppRunner {
  Future<void> preloadData();
  Future<void> run(AppBuilder appBuilder);
}
