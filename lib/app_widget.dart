import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sqlite_demo/routes/app_router.dart';

class AppWidget extends HookConsumerWidget {
  AppWidget({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        // 0xFF009688
        // colorScheme: ColorScheme.fromSeed(
        //   seedColor: const Color(0xFF009688),
        // ),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.teal,
        ),
      ),
      // routing
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
    );
  }
}
