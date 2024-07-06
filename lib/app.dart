import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'config/config.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(goRouterProvider);
    return CustomSafeArea(
      child: MaterialApp.router(
        routerConfig: appRouter,
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        builder: (context, child) {
          return MediaQuery.withClampedTextScaling(
            child: child!,
            maxScaleFactor: 1,
            minScaleFactor: 1,
          );
        },
      ),
    );
  }
}

class CustomSafeArea extends StatelessWidget {
  final Widget child;

  const CustomSafeArea({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsConfig.twitterBlack,
      child: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.black,
          child: SafeArea(child: child),
        ),
      ),
    );
  }
}
