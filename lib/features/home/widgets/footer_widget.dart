import 'package:flutter/material.dart';

import 'package:flutter/gestures.dart';
import 'package:go_router/go_router.dart';

import 'package:clone_twitter/config/config.dart';
import 'package:clone_twitter/config/router/app_routes.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Already have an account? ',
        style: const TextStyle(
          color: ColorsConfig.twitterLightGrey,
          fontSize: 14,
        ),
        children: [
          TextSpan(
            text: 'Log in',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.push(AppRoutes.login);
              },
            style: const TextStyle(
              color: ColorsConfig.twitterBlue,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
