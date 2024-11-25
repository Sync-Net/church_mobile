import 'package:church_mobile/core/di/dependency_injection.dart';
import 'package:church_mobile/core/router/router.dart';
import 'package:church_mobile/core/services/cache_helper.dart';
import 'package:church_mobile/core/services/custom_bloc_server.dart';
import 'package:church_mobile/firebase_options.dart';
import 'package:church_mobile/hive_setup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPrefs = CacheHelper();
  await sharedPrefs.init();
  final GoRouter router = initializeRouter();
  setupGetit();
  Bloc.observer = CustomBlocServer();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await HiveSetup.initialize();
  runApp(MyApp(router: router));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.router});
  final GoRouter router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Cairo',
      ),
      routerConfig: router,
    );
  }
}
