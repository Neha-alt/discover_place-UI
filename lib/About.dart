import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Image(
                 image: AssetImage('images/grid (1).png'),
               ),
                Icon(Icons.search,color: Colors.grey,size: 35,),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 25),
              child: Text(
                'Top places in Bali',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ubud',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Kuta',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'Denpasar',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'Jimbaran',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Container(
                    height: 380,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(198,216,226,1),
                      borderRadius:BorderRadius.all(Radius.circular(30),),
                    ),
                  ),
                 Container(
                   height: 440,
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image: AssetImage('images/ubud4.png'),
                       fit: BoxFit.cover,
                     ),
                   ),
                 ),
                  Positioned(
                    left: 15,
                    child: Icon(
                      Icons.bookmark,
                      color: Colors.deepOrangeAccent,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Top Activities',
              style: TextStyle(
                fontSize: 35,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                        image: AssetImage('images/icon1.png'),
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                        image: AssetImage('images/sunset.png'),
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                        image: AssetImage('images/plant.png'),
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                        image: AssetImage('images/buddha.png'),
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
