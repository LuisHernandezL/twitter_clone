import 'package:clone_twitter/config/config.dart';
import 'package:clone_twitter/config/router/app_routes.dart';
import 'package:clone_twitter/features/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        showBackButton: true,
      ),
      bottomNavigationBar: CustomAuthNavBar(
        buttonText: 'Next',
        onPressed: () {
          context.push(AppRoutes.password);
        },
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Text(
              'To get started, first enter your phone, email, or @username',
              style: TextStyle(
                color: ColorsConfig.twitterWhite,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            CustomTextFormField(),
          ],
        ),
      ),
    );
  }
}
