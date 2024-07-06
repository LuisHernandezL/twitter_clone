import 'package:flutter/material.dart';
import 'package:clone_twitter/config/config.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBackButton;
  const CustomAppBar({super.key, this.showBackButton = false});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final height = mediaQuery.size.height;
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: ColorsConfig.twitterBlack,
      toolbarHeight: height * 0.1,
      leading: showBackButton
          ? IconButton(
              icon:
                  const Icon(Icons.arrow_back, color: ColorsConfig.twitterBlue),
              onPressed: () {},
            )
          : null,
      title: Image.asset(
        'assets/images/twitter_logo.png',
        height: 30,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
