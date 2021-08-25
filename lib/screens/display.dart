import 'package:firebase_app/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DisplayScreen extends StatelessWidget {

  const DisplayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Second Screen"),
      ),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50.0),
          Center(
            child: CircleAvatar(
              radius: 75.0,
              backgroundImage: NetworkImage(
                  'https://image.shutterstock.com/image-vector/portrait-young-asian-man-sunglasses-260nw-1351164071.jpg'),
            ),
          ),
          SizedBox(height: 100.0),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("HOME"),
                ElevatedButton(
                  onPressed: () {
                    context.read<AuthenticationService>().signOut();
                  },
                  child: Text("Sign out"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
