import 'package:clone_twitter/config/config.dart';
import 'package:clone_twitter/features/auth/widgets/widgets.dart';
import 'package:clone_twitter/features/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        showBackButton: true,
      ),
      bottomNavigationBar: CustomAuthNavBar(
        buttonText: 'Next',
        onPressed: () {},
        showForgotPassword: false,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 2,
              child: Text(
                'Create your account',
                style: TextStyle(
                  color: ColorsConfig.twitterWhite,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomTextFormField(
                    hintText: 'Name',
                    maxLength: 50,
                  ),
                  SizedBox(height: 20),
                  CustomTextFormField(
                    hintText: 'Phone, email, or username',
                  ),
                  SizedBox(height: 20),
                  CustomTextFormField(
                    hintText: 'Date of birth',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
