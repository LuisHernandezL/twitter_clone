import 'package:clone_twitter/config/config.dart';
import 'package:flutter/material.dart';

class SideDrawerWidget extends StatelessWidget {
  const SideDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorsConfig.twitterBlack,
      child: Column(
        children: [
          const SizedBox(height: 50),
          ListTile(
            leading: const Icon(
              Icons.person,
              size: 30,
            ),
            title: const Text(
              'My Profile',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            onTap: () {
              // Navigator.push(
              //   context,
              //   UserProfileView.route(currentUser),
              // );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.payment,
              size: 30,
            ),
            title: const Text(
              'Twitter Blue',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              size: 30,
            ),
            title: const Text(
              'Log Out',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
