import 'package:flutter/material.dart';

class FeedWidget extends StatelessWidget {
  const FeedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 30,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 28,
                    backgroundImage:
                        AssetImage('assets/images/twitter_logo.png'),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5),
                          Text('@handle'),
                          SizedBox(width: 5),
                          Text('•'),
                          SizedBox(width: 5),
                          Text('2h'),
                        ],
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.79,
                        child: const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                          maxLines: 4,
                          style: TextStyle(overflow: TextOverflow.ellipsis),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }
}
