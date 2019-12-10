import 'package:flutter/material.dart';
import 'pages/tabs/tab.dart';
import 'routes/Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        platform: TargetPlatform.iOS
      ),
      initialRoute: '/content',
       onGenerateRoute: onGenerateRoute
    );
  }
}