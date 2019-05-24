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
                      crossAxisCount: 2,
                    primary: false,
                    crossAxisSpacing: 0,
                    childAspectRatio: 0.85,
                    mainAxisSpacing: 25,
                    shrinkWrap: true,
                    children: <Widget>[
                      _buildCard('assets/hublot.jpg',4, 'Hublot 21'),
                      _buildCard('assets/hublot1.jpg',4, 'Hublot 200'),
                      _buildCard('assets/hugo.png',4,'hugo '),
                      _buildCard('assets/kenneth-cole.jpg',4,'Kenneth cole '),
                      _buildCard('assets/lotus-watch.jpg',4, 'Lotus 1'),
                      _buildCard('assets/trendy-blue.jpg',4,'Lotus 0')

                    ],

                  )
                ],

              ),

                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20)
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
  Widget _buildCard( String imgpath, int rate, String name){
    return Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 550,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 2,
              blurRadius: 1,
            )
          ],
          border: Border.all(
            color: Colors.transparent,
            style: BorderStyle.solid,
            width: 1.0
          )
        ),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                        image: AssetImage(imgpath),
                        fit: BoxFit.cover,
                      )


                    ),
                  ),
                ),SizedBox(width: 10,),
                Text(name, style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),)
              ],
            )
          ],

        ),
      ),


    );
  }
}
