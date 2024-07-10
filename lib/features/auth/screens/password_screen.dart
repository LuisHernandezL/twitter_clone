import 'package:clone_twitter/config/config.dart';
import 'package:clone_twitter/config/router/app_routes.dart';
import 'package:clone_twitter/features/auth/widgets/widgets.dart';
import 'package:clone_twitter/features/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        showBackButton: true,
      ),
      bottomNavigationBar: CustomAuthNavBar(
        buttonText: 'Log in',
        onPressed: () {
          context.push(AppRoutes.feed);
        },
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter your password',
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
