import 'package:flutter/material.dart';
import 'package:pushnotification/page/fcm_page.dart';
import 'package:pushnotification/page/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/fcm': (_) => const FcmPage()},
      home: const HomePage(),
    );
  }
}
