import 'package:flutter/material.dart';

class UserStory extends StatelessWidget {
  final String name;
  UserStory({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle
            ),
          ),
          SizedBox(height: 10),
          Text(name)
        ],
      ),
    );
  }
}
