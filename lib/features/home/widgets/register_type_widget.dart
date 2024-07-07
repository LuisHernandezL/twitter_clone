import 'package:clone_twitter/config/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:clone_twitter/config/config.dart';
import 'package:go_router/go_router.dart';

class RegisterTypeWidget extends StatelessWidget {
  const RegisterTypeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle richTextStyle = const TextStyle(
      color: ColorsConfig.twitterLightGrey,
      fontSize: 10,
    );

    TextStyle linkTextStyle = const TextStyle(
      color: ColorsConfig.twitterBlue,
      fontSize: 10,
    );

    return Column(
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
          onPressed: () {
            context.push(AppRoutes.register);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorsConfig.twitterBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
          text: TextSpan(
            text: 'By signing up, you agree to the ',
            style: richTextStyle,
            children: [
              TextSpan(
                text: 'Terms of Service',
                style: linkTextStyle,
              ),
              TextSpan(
                text: ', ',
                style: richTextStyle,
              ),
              TextSpan(
                text: 'Privacy Policy',
                style: linkTextStyle,
              ),
              TextSpan(
                text: ', and ',
                style: richTextStyle,
              ),
              TextSpan(
                text: 'Cookie Use',
                style: linkTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
