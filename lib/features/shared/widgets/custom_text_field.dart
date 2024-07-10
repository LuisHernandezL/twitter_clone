import 'package:flutter/material.dart';
import 'package:clone_twitter/config/config.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final int? maxLength;
  final bool obscureText;

  const CustomTextFormField({
    super.key,
    this.hintText = 'Phone, email, or username',
    this.maxLength,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: obscureText
            ? IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.remove_red_eye,
                  color: ColorsConfig.twitterLightGrey,
                ),
              )
            : null,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: ColorsConfig.twitterLightGrey,
          fontSize: 16,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorsConfig.twitterLightGrey,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorsConfig.twitterBlue,
          ),
        ),
      ),
    );
  }
}
