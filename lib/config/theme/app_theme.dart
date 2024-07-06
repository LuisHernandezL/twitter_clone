import 'package:flutter/material.dart';
import 'package:clone_twitter/config/theme/colors_theme.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
        useMaterial3: false,
        colorScheme: const ColorScheme.dark(
          primary: ColorsConfig.twitterBlack,
        ),
      );
}
