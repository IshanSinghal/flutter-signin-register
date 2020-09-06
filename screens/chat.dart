import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class MyChat extends StatefulWidget {
  @override
  _MyChatState createState() => _MyChatState();
}

class _MyChatState extends State<MyChat> {
  @override
  void initState() {
    print("landed to chat");

    super.initState();
  }

  var authc = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat Page"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () async {
                print("sign off");
                await authc.signOut();
                Navigator.pushNamed(context, "login");
              }),
        ],
      ),
      body: RaisedButton(
        onPressed: () {
          try {
            var user = authc.currentUser;
            print(user.email);
          } catch (e) {
            print(e);
          }
        },
        child: Text('click to know who u r'),
      ),
    );
  }
}
