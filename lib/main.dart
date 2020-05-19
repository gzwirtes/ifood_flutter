import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ifood_flutter/pages/home.dart';

import 'pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ifood in Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: <String, WidgetBuilder>{
        '/login' : (BuildContext context) => new TLogin(),
        '/home' : (BuildContext context) => new THome(),
        '/restaurantes' : (BuildContext context) => new THome(),
      },
      home: TLogin(),
    );
  }
}