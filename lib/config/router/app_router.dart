import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:clone_twitter/config/router/app_routes.dart';

import 'package:clone_twitter/features/home/screens/screens.dart';
import 'package:clone_twitter/features/login/screens/screens.dart';

final goRouterProvider = Provider(
  (ref) {
    return GoRouter(
      initialLocation: AppRoutes.home,
      routes: [
        // GoRoute(path: AppRoutes.feed),
        GoRoute(
          path: AppRoutes.login,
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: AppRoutes.password,
          builder: (context, state) => const PasswordScreen(),
        ),
        GoRoute(
          path: AppRoutes.home,
          builder: (context, state) => const HomeScreen(),
        ),
        // GoRoute(path: AppRoutes.register),
      ],
    );
  },
);
