import 'package:flutter/material.dart';
import 'package:clone_twitter/config/config.dart';
import 'package:clone_twitter/features/shared/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        color: ColorsConfig.twitterBlack,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: Center(
                  child: Text(
                    'See what\'s happening in the world right now.',
                    style: TextStyle(
                      color: ColorsConfig.twitterWhite,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsConfig.twitterWhite,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                    ),
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        color: ColorsConfig.twitterBlue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Row(children: [
                    Expanded(
                        child: Divider(
                      color: ColorsConfig.twitterLightGrey,
                    )),
                    SizedBox(width: 10),
                    Text(
                      "Or",
                      style: TextStyle(
                        color: ColorsConfig.twitterLightGrey,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                        child: Divider(
                      color: ColorsConfig.twitterLightGrey,
                    )),
                  ]),
                  const SizedBox(height: 5),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsConfig.twitterBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                    ),
                    child: const Text(
                      'Create account',
                      style: TextStyle(
                        color: ColorsConfig.twitterWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  RichText(
                      text: const TextSpan(
                    text: 'By signing up, you agree to the ',
                    style: TextStyle(
                      color: ColorsConfig.twitterLightGrey,
                      fontSize: 14,
                    ),
                    children: [
                      TextSpan(
                        text: 'Terms of Service',
                        style: TextStyle(
                          color: ColorsConfig.twitterBlue,
                          fontSize: 14,
                        ),
                      ),
                      TextSpan(
                        text: ', ',
                        style: TextStyle(
                          color: ColorsConfig.twitterLightGrey,
                          fontSize: 14,
                        ),
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                          color: ColorsConfig.twitterBlue,
                          fontSize: 14,
                        ),
                      ),
                      TextSpan(
                        text: ', and ',
                        style: TextStyle(
                          color: ColorsConfig.twitterLightGrey,
                          fontSize: 14,
                        ),
                      ),
                      TextSpan(
                        text: 'Cookie Use',
                        style: TextStyle(
                          color: ColorsConfig.twitterBlue,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ))
                ],
              ),
              const SizedBox(height: 15),
              RichText(
                text: const TextSpan(
                  text: 'Already have an account? ',
                  style: TextStyle(
                    color: ColorsConfig.twitterLightGrey,
                    fontSize: 14,
                  ),
                  children: [
                    TextSpan(
                      text: 'Log in',
                      style: TextStyle(
                        color: ColorsConfig.twitterBlue,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
