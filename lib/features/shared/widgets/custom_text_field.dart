import 'package:flutter/material.dart';
import 'package:clone_twitter/config/config.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: 'Phone, email, or username',
        hintStyle: TextStyle(
          color: ColorsConfig.twitterLightGrey,
          fontSize: 16,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorsConfig.twitterLightGrey,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorsConfig.twitterBlue,
          ),
        ),
      ),
    );
  }
}
