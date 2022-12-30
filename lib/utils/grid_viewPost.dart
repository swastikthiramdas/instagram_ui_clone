import 'package:flutter/material.dart';

class GridViewPost extends StatelessWidget {
  final Color colore;
  final int grid;
   GridViewPost({Key? key, required this.colore, this.grid = 3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 20,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: grid),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4),
            child: Container(
              color: colore,
            ),
          );
        });
  }
}
