import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/dependency_injection/injectable.dart';
import 'core/utils/app_theme.dart';
import 'core/router/router.dart';
import 'features/home/presentation/core/cart_bloc/cart_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) =>
          getIt<CartBloc>()..add(const CartEvent.getAllItems()),
      child: MaterialApp.router(
        title: 'Technaureus Machine Test',
        themeMode: ThemeMode.light,
        theme: AppTheme.light,
        darkTheme: AppTheme.light,
        debugShowCheckedModeBanner: false,
        restorationScopeId: 'root',
        routerConfig: router,
      ),
    );
  }
}
