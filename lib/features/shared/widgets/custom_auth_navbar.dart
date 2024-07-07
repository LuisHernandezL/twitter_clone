import 'package:clone_twitter/config/config.dart';
import 'package:flutter/material.dart';

class CustomAuthNavBar extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const CustomAuthNavBar({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: ColorsConfig.twitterLightGrey,
            width: 0.1,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Forgot password?',
              style: TextStyle(
                color: ColorsConfig.twitterLightGrey,
                fontSize: 14,
              ),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: ColorsConfig.twitterBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              onPressed: onPressed,
              child: Text(
                buttonText,
                style: const TextStyle(
                    color: ColorsConfig.twitterWhite, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
