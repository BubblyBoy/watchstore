import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key,}) : super(key: key);

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Container(
        child: Column(
            children: <Widget>[
            Container(

              height: 200,

              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 6,
                      blurRadius: 3
                    )
                  ],
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                  ),
                  image: DecorationImage(image:AssetImage('assets/w4.jpg') ,
                  fit: BoxFit.cover)
              ),

            ),
              Padding(
                padding: const EdgeInsets.only(left: 15 , right: 10),
                child: Row(


                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('POPULAR',style: TextStyle(color: Colors.yellow[900],fontSize: 23),),
                    IconButton(icon: Icon(Icons.arrow_forward, color: Colors.yellow[900],),color: Colors.yellow[900], iconSize: 30, onPressed: null)
                  ],),
              ),
            Container(
              child: ListView(
                children: <Widget>[
                  GridView.count(
                      crossAxisCount: 2)
                ],

              ),

                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50)
                  )
                    
                ),
                height:344,
                ),
            Padding(
              padding: const EdgeInsets.only(left: 15 , right: 10),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('NEW PRODUCTS',style: TextStyle(color: Colors.yellow[900],fontSize: 23),),
                  IconButton(icon: Icon(Icons.arrow_forward, color: Colors.yellow[900],),color: Colors.yellow[900], iconSize: 30, onPressed: null)
                ],),
            ),
        ],
          ),

      ),



    );
  }
}
