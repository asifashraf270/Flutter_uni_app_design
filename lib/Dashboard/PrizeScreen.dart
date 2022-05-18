import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrizeScreen extends StatefulWidget{
  const PrizeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
  return PrizeScreenState();
  }

}
class PrizeScreenState extends State<PrizeScreen>
{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: const Text("Prize Screen",style: TextStyle(color: Colors.black,fontSize: 25.0),),
      ),
    );
  }

}