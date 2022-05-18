import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForumScreen extends StatefulWidget {
  const ForumScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ForumScreenState();
  }

}

class ForumScreenState extends State<ForumScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: const Text("Forum Screen",
          style: TextStyle(color: Colors.black, fontSize: 25.0),),
      ),
    );
  }

}