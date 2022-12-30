import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(
    InstgramClone(),
  );
}

class InstgramClone extends StatelessWidget {
  const InstgramClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
