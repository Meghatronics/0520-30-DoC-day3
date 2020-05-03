import 'package:day3_30doc/pages/landing_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(NewNigeriaNewsApp());

class NewNigeriaNewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New Nigeria News',
      initialRoute: 'landing_page',
      routes: {
        'landing_page': (context) => LandingPage(),
      },
    );
  }
}
