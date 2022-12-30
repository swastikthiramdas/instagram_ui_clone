import 'package:flutter/material.dart';

import '../utils/grid_viewPost.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[200]
            ),
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.grey),
                Text('Search', style: TextStyle(color: Colors.grey),)
              ],
            ),
          ),
        ),
      ),
      body: GridViewPost(colore: Colors.deepPurple,),
    );
  }
}
