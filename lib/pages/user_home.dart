import 'package:flutter/material.dart';

import '../utils/user_post.dart';
import '../utils/user_story.dart';

class UserHome extends StatelessWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(fontSize: 18),
            ),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.favorite)),
                Icon(Icons.share)
              ],
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return UserStory(name: 'Swastik');
                  }),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Userpost(name: 'Swastik');
                  }),
            )
          ],
        ),
      ),
    );
  }
}
