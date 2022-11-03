import 'package:flutter/cupertino.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:it_project/app/di/init_di.dart';
import 'package:it_project/app/domain/app_builder.dart';
import 'package:it_project/app/domain/app_runner.dart';
import 'package:path_provider/path_provider.dart';

class MainAppRunner implements AppRunner {
  final String env;

  MainAppRunner(this.env);

  @override
  Future<void> preloadData() async {
    WidgetsFlutterBinding.ensureInitialized();
    //init app
    initDi(env);
    //init config
  }

  @override
  Future<void> run(AppBuilder appBuilder) async {
    await preloadData();
    var storageDirectory = await getApplicationDocumentsDirectory();
    final storage = await HydratedStorage.build(storageDirectory: storageDirectory);
    HydratedBlocOverrides.runZoned(
      () => runApp(appBuilder.buildApp()),
      storage: storage,
    );
    runApp(appBuilder.buildApp());
  }
}
