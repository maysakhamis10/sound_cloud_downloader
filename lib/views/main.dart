import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() => runApp(MyApp());

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


//  return new MaterialApp(
//  initialRoute: '/',
//  routes: {
//  // When navigating to the "/" route, build the FirstScreen widget.
//  '/': (context) =>
//  BlocProvider(
//  create: (context) =>
//  CharBloc(httpClient: http.Client())
//  ..add(Fetch()),
//  child: HomePage(),
//  ),
//  // When navigating to the "/second" route, build the SecondScreen widget.
//  'Details': (context) => BlocProvider(
//  create: (context) =>
//  DetailsBloc(httpClient: http.Client())..add(Fetch()),
//  child: Details(),
//  )
//  }
//  );
}

