import 'package:flutter/material.dart';

class SpacesWidget extends StatelessWidget {
  const SpacesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Map<String, String> spaces = {
      'space1': 'avatar',
      'space2': 'avatar',
      'space3': 'avatar',
      'space4': 'avatar',
      'space5': 'avatar',
      'space6': 'avatar',
      'space7': 'avatar',
      'space8': 'avatar',
      'space9': 'avatar',
      'space10': 'avatar',
    };
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: spaces.entries
            .map(
              (e) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage('assets/images/twitter_logo.png'),
                    ),
                    const SizedBox(height: 5),
                    Text(e.key),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
