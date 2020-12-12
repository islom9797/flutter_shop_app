import 'package:flutter/material.dart';

class AmazonUi extends StatefulWidget {
  static final String id="amazon_ui";
  @override
  _AmazonUiState createState() => _AmazonUiState();
}

class _AmazonUiState extends State<AmazonUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF018197),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    child:
                    Image(image: AssetImage('assets/images/amazon_logo.png')),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.mic, color: Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart, color: Colors.white),
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              color: Color(0xFF018197),
              child: Container(
                height: 50,
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1, //                   <--- border width here
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "What are you looking for?",
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.search,
                            color: Color(0xFF018197),
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.camera_alt, color: Color(0xFF018197)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10,right: 10),
                    color: Colors.blueGrey,
                    height: 45,
                    child: Row(
                      children: [
                        Icon(Icons.location_on,color: Colors.white,),
                        SizedBox(width: 5,),
                        Text("Deliver to Korea, Republic of",style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                  Container(
                    height: 140,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.white,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(70),bottomRight: Radius.circular(70)),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/image_1.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          width: 180,
                          color: Colors.white,
                          child: Center(
                            child: Text("We ship 45million products",style: TextStyle(fontSize: 16),),
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 8,),
                  Container(
                    padding: EdgeInsets.only(left: 16,right: 16),
                    height: 160,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Sign in for the best experience",style: TextStyle(color: Colors.black,fontSize: 18),),
                        SizedBox(height: 15,),
                        Container(
                          width: double.infinity,
                          height: 50,
                          color: Colors.orange,
                          child: Center(
                            child: Text("Sign in",style: TextStyle(fontSize: 18),),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text("Create an account",style: TextStyle(color: Colors.blueAccent,fontSize: 18),),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),
                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Deal of the Day",style: TextStyle(color: Colors.black,fontSize: 22),),
                        SizedBox(height: 16,),
                        Image(
                          width: double.infinity,
                          height: 240,
                          image: AssetImage("assets/images/1.jpg"),
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 16,),
                        Text("Up to 31% off APC UPS Battery Back",style: TextStyle(fontSize: 17),),
                        SizedBox(height: 6,),
                        Text("\$10.99 - \$79.9",style: TextStyle(fontSize: 17),),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),
                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Best sellers in Electronics",style: TextStyle(color: Colors.black,fontSize: 22),),

                        SizedBox(height: 16,),
                        Container(
                          height: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Image(
                                        image: AssetImage("assets/images/1.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                              SizedBox(width: 5,),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Image(
                                        image: AssetImage("assets/images/3.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Expanded(
                                      child: Image(
                                        image: AssetImage("assets/images/4.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),

                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}