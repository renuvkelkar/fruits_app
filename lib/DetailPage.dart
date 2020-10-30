import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Detail Page"),
      ),
      body: SingleChildScrollView(
        child:   Stack(
          children: <Widget>[
            Container(
              height: ScreenHeight * 0.3,

              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30),)
              ),
            ),

            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 160),
                  child: Image.asset(
                    "assets/images/orange.png",
                    height: 250,
                  ),
                ),


              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 10),
              child: Text("Orange Lady",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            )
          ],
        ),

      ),
    );
  }
}
