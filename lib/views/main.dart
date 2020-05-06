import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() => runApp(MyApp());

var test = "https://api.soundcloud.com/resolve.json?url=https://soundcloud.com/alhabibali/sets/almoreed3&client_id=5a9981e3f724ceb3e00d929cf4d09bb6";

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Soundcloud Downloader v0.1',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomePage(),
    );
  }

}

