import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lwsocialchat/screens/chat.dart';
import 'package:lwsocialchat/screens/home.dart';
import 'package:lwsocialchat/screens/login.dart';
import 'package:lwsocialchat/screens/reg.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(
    MaterialApp(
      initialRoute: "home",
      routes: {
        "home": (context) => MyHome(),
        "reg": (context) => MyReg(),
        "login": (context) => MyLogin(),
        "chat": (context) => MyChat(),
      },
    ),
  );
}
