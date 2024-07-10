import 'package:clone_twitter/config/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:clone_twitter/config/config.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBackButton;
  final bool isDashboard;
  const CustomAppBar(
      {super.key, this.showBackButton = false, this.isDashboard = false});

  IconButton? getIconButton(void Function()? onPressed) {
    if (showBackButton) {
      return IconButton(
        icon: const Icon(Icons.arrow_back, color: ColorsConfig.twitterBlue),
        onPressed: onPressed,
      );
    }

    if (isDashboard) {
      return IconButton(
        icon: const Icon(
          Icons.menu_rounded,
          color: ColorsConfig.twitterBlue,
        ),
        onPressed: onPressed,
      );
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final height = mediaQuery.size.height;
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: ColorsConfig.twitterBlack,
      toolbarHeight: height * 0.1,
      leading: getIconButton(() {
        showBackButton
            ? context.canPop()
                ? context.pop()
                : context.pushReplacement(AppRoutes.home)
            : null;
      }),
      title: Image.asset(
        'assets/images/twitter_logo.png',
        height: 30,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
