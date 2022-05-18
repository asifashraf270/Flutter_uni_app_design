import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget
{
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
  return ProfileScreenState();
  }

}
class ProfileScreenState extends State<ProfileScreen>
{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: const Text("Profile Screen",style: TextStyle(color: Colors.black,fontSize: 25.0),),
      ),
    );
  }

}