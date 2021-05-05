import 'package:chat_room/screens/chat_screen.dart';
import 'package:chat_room/screens/home_screen.dart';
import 'package:chat_room/screens/login_screen.dart';
import 'package:chat_room/screens/register_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      routes: {
        LoginScreen.routeName:(ctx)=>LoginScreen(),
        RegisterScreen.routeName:(ctx)=>RegisterScreen(),
        ChatScreen.routeName:(ctx)=>ChatScreen(),
      },
    );
  }
}
