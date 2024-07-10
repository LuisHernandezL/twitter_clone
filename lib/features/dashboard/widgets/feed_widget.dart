import 'package:flutter/material.dart';

class FeedWidget extends StatelessWidget {
  const FeedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: const Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage('assets/images/twitter_logo.png'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('User Name'),
                      Text('User Handle'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              ),
              SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }
}
