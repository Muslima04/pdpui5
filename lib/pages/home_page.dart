import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 260,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/ic_header.jpg'),
                    fit: BoxFit.cover
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.4),
                        ]
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text("Best Hotels Ever?", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                    SizedBox(height: 30,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search, color: Colors.grey,),
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                            hintText: "Search for hotels..."
                        ),
                      ),
                    ),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Business Hotels", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 23),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(image: 'assets/images/ic_hotel1.jpg', title: 'Hotel 1'),
                        makeItem(image: 'assets/images/ic_hotel2.jpg', title: 'Hotel 2'),
                        makeItem(image: 'assets/images/ic_hotel3.jpg', title: 'Hotel 3'),
                        makeItem(image: 'assets/images/ic_hotel4.jpg', title: 'Hotel 4'),
                        makeItem(image: 'assets/images/ic_hotel5.jpg', title: 'Hotel 5')
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),

                  Text("Airport Hotels", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 23),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(image: 'assets/images/ic_hotel5.jpg', title: 'Hotel 1'),
                        makeItem(image: 'assets/images/ic_hotel4.jpg', title: 'Hotel 2'),
                        makeItem(image: 'assets/images/ic_hotel3.jpg', title: 'Hotel 3'),
                        makeItem(image: 'assets/images/ic_hotel2.jpg', title: 'Hotel 4'),
                        makeItem(image: 'assets/images/ic_hotel1.jpg', title: 'Hotel 5')
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Resort Hotels", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 23),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(image: 'assets/images/ic_hotel5.jpg', title: 'Hotel 1'),
                        makeItem(image: 'assets/images/ic_hotel4.jpg', title: 'Hotel 2'),
                        makeItem(image: 'assets/images/ic_hotel3.jpg', title: 'Hotel 3'),
                        makeItem(image: 'assets/images/ic_hotel2.jpg', title: 'Hotel 4'),
                        makeItem(image: 'assets/images/ic_hotel1.jpg', title: 'Hotel 5')
                      ],
                    ),
                  ),
                  SizedBox(height: 60,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1.0 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover
            )
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.2),
                  ]
              )
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                Text(title, style: TextStyle(color: Colors.white, fontSize: 23),),
                SizedBox(width: 45,),
                Icon(Icons.favorite,size: 25  ,color: Colors.red,)
              ],
            )

          ),
        ),
      ),
    );
  }
}
