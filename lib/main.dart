import 'package:firebaseauthentication/theme/routes.dart';
import 'package:flutter/material.dart';

import 'views/opening_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: AppRoutes.define(),
      home: openingScreen(),
    );
  }
}
