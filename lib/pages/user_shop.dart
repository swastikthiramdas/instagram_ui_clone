import 'package:flutter/material.dart';

import '../utils/grid_viewPost.dart';

class UserShop extends StatelessWidget {
  const UserShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Shop'),
                  Row(
                    children: [
                      Icon(Icons.calendar_today_sharp),
                      Icon(Icons.menu)
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.grey[200]),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.grey),
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                  child: GridViewPost(
                grid: 2,
                colore: Colors.blueAccent,
              ))
            ],
          ),
        ));
  }
}
