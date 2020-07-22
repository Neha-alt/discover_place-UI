import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:discover_app/About.dart';
import 'package:discover_app/gallery.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            //background image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://i.pinimg.com/564x/ff/1b/6a/ff1b6a9c7194ada5f4dd0af1811440a8.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            //Icons row
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 35,
                  ),
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 35,
                  ),
                ],
              ),
            ),
            //text positioning
            Positioned(
              top: 460,
              left: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Discover ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'The mere mention of Bali evokes\nthoughts of paradise.',
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //list of images
            Positioned(
              top: 560,
              left: 12,
              right: 12,
              child: Container(
                margin:
                EdgeInsets.symmetric(vertical: 40.0, horizontal: 10),
                height: 80.0,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.black45.withOpacity(0.3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 40,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                            image: AssetImage('images/img1.cms'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return About();
                          }),);
                        },
                        child: Container(
                          height: 40,
                          width: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                              image:AssetImage('images/img2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 40,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                            image: AssetImage('images/img3.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 40,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                            image: NetworkImage('https://i0.wp.com/lovehardtraveloften.com/wp-content/uploads/2019/10/nusa-penida-diamond-beach.jpg?fit=1920%2C1200&ssl=1'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Example01();
                          }),);
                        },
                        child: Container(
                          height: 40,
                          width: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.amber.withOpacity(0.8),
                          ),
                          child: Center(
                            child: Text(
                              '+36',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //next row of icons
            Positioned(
              top: 730,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'More',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.amber,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 300),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.amber,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//https://i.pinimg.com/originals/c2/55/70/c25570c93c866c8e47bae4515aef60e8.jpg