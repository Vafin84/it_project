import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_project/app/di/init_di.dart';
import 'package:it_project/app/domain/app_builder.dart';
import 'package:it_project/app/ui/root_screen.dart';
import 'package:it_project/feature/auth/domian/auth_repository.dart';
import 'package:it_project/feature/auth/domian/auth_state/auth_cubit.dart';
import 'package:it_project/feature/posts/domain/post_repo.dart';
import 'package:it_project/feature/posts/state/post_cubit/cubit/post_cubit.dart';

class MainAppBuilder implements AppBuilder {
  @override
  Widget buildApp() {
    return const _GlobalProviders(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: RootScreen(),
      ),
    );
  }
}

class _GlobalProviders extends StatelessWidget {
  const _GlobalProviders({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => locator.get<AuthCubit>(),
      ),
      BlocProvider(
        create: (context) => PostCubit(locator.get<PostRepo>())..fetchPost(),
      ),
    ], child: child);
  }
}
