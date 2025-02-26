import 'package:clone_twitter/config/config.dart';

import 'package:clone_twitter/features/dashboard/widgets/widgets.dart';
import 'package:clone_twitter/features/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideDrawerWidget(),
      appBar: const CustomAppBar(
        isDashboard: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorsConfig.twitterBlue,
        foregroundColor: Colors.white,
        onPressed: () {
          // context.push(AppRoutes.tweet);
        },
        child: const Icon(Icons.create),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SpacesWidget(),
            Divider(),
            FeedWidget(),
          ],
        ),
      ),
    );
  }
}
