import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState

    //on Terminate

    FirebaseMessaging.instance.getInitialMessage().then((message) {
      var _routeName = message!.data['router'];
      Navigator.pushNamed(context, _routeName);
    });

    //on background
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      print(event.notification!.title);
    });

    //on foreground
    FirebaseMessaging.onMessage.listen((event) {
      if (event.notification != null) {
        print(event.notification!.title);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
    );
  }
}
