import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruitsapp/DetailPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoard(),
    );
  }
}
class DashBoard extends StatefulWidget {

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  @override
  Widget build(BuildContext context) {
    List<String> Category =[ "candy","Fruits","sundays","sorbet"
    ];
    List<String> Product =["green candy","pinky queen","yellow cooler","blue magic","choco dark","fruity cream",
    "lemon lady"];


    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(

      /*appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("IceCream Corner"),
      ),*/
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: screenHeight *0.4,
                  decoration: BoxDecoration(
                     // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                      color: Colors.yellow
                  ),

                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Welcome to",style: TextStyle(
                            fontSize: 25,
                            letterSpacing: 0.5,
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text("Ice Cream Center",style: TextStyle(
                                fontSize: 25
                            ),),
                          ),
                        ],
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(left:20,top: 50),
                      child: Image.asset("assets/images/icream.png",height: 150,),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top:200),
                  child: Container(
                    height: screenHeight *0.1,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: Category.length,
                        itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 100,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(child: Text(Category[index],)),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.deepOrange
                              ),

                            ),
                          );
                        }),
                  ),
                ),

              ],
            ),
            GridView.builder(
              scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: Product.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (_)=> DetailPage()
                        ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                        ),
                        child:Column(
                          children: <Widget>[
                            Image.asset("assets/images/orange.png",height: 100,),
                            Center(child: Text(Product[index],style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),)),
                          ],
                        ),


                      ),
                    ),
                  );
                })



          ],
        ),
      ),

    );
  }
}
