
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RankingScreen extends StatefulWidget
{
  const RankingScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return RankingScreenState();
  }

}
class RankingScreenState extends State<RankingScreen>
{
  @override
  Widget build(BuildContext context) {
   return Center(
     child: Container(
       child: const Text("Ranking Screen",style: TextStyle(color: Colors.black,fontSize: 25.0),),

     ),
   );
  }

}