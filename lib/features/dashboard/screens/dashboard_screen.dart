import 'package:clone_twitter/config/router/app_routes.dart';
import 'package:clone_twitter/features/auth/widgets/widgets.dart';
import 'package:clone_twitter/features/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      bottomNavigationBar: CustomAuthNavBar(
        buttonText: 'Next',
        onPressed: () {
          context.push(AppRoutes.password);
        },
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          child: Text('DashBoard'),
        ),
      ),
    );
  }
}
