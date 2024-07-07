import 'package:flutter/material.dart';

import 'package:clone_twitter/config/config.dart';

class WelcomeMessageWidget extends StatelessWidget {
  const WelcomeMessageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
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
    );
  }
}
