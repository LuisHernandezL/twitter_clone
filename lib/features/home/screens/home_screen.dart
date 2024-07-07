import 'package:flutter/material.dart';

import 'package:clone_twitter/features/home/widgets/widgets.dart';
import 'package:clone_twitter/features/shared/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeMessageWidget(),
            RegisterTypeWidget(),
            SizedBox(height: 35),
            FooterWidget(),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
