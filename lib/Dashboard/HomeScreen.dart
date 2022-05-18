import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget
{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }

}
class HomeScreenState extends State<HomeScreen>
{
  @override
  Widget build(BuildContext context) {
    return Center(
    child: Container(
      child: const Text("Home Screen",style: TextStyle(color: Colors.black,fontSize: 24.0),)
      ,
    ),

    );
  }

}