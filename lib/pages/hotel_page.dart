import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/pages/intro_page.dart';
import 'package:flutter_shop_app/pages/main_page.dart';
class HotelPage extends StatefulWidget {
  static final String id="hotel_page";
  @override
  _HotelPageState createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:<Widget> [
            //tepa qism
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage("assets/images/a.jpg"),
                  fit: BoxFit.cover
                ),

              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,

                    colors:[
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.4),
                    ]
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Best Hotels Ever",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      padding: EdgeInsets.symmetric(vertical: 3),
                      height: 50,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search_rounded,color: Colors.grey,),
                          hintText: "Search hotels",
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 18,),

                        ),
                      ),
                    ),
                    SizedBox(height: 20,)
                  ],
                ),
              ),



            ),
            SizedBox(height: 30,),
           Container(
             padding: EdgeInsets.symmetric(horizontal: 20),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children:<Widget> [
                 Text("Bussiness Hotels",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                 SizedBox(height: 20,),
                 Container(
                   height: 200,
                   child: ListView(
                     scrollDirection: Axis.horizontal,
                     children: <Widget>[
                       makeItem(image:"assets/images/s.jpg",title:"Hotel 1"),
                       makeItem(image:"assets/images/d.jpg",title:"Hotel 1"),
                       makeItem(image:"assets/images/f.jpg",title:"Hotel 1"),
                       makeItem(image:"assets/images/g.jpg",title:"Hotel 1"),
                       makeItem(image:"assets/images/h.jpg",title:"Hotel 1"),
                     ],
                   ),
                 ),

               ],
             ),
           ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                  Text("Resort Hotels",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(image:"assets/images/g.jpg",title:"Hotel 1"),
                        makeItem(image:"assets/images/s.jpg",title:"Hotel 1"),
                        makeItem(image:"assets/images/d.jpg",title:"Hotel 1"),
                        makeItem(image:"assets/images/f.jpg",title:"Hotel 1"),

                        makeItem(image:"assets/images/h.jpg",title:"Hotel 1"),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                  Text("Airports Hotels",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(image:"assets/images/h.jpg",title:"Hotel 1"),
                        makeItem(image:"assets/images/s.jpg",title:"Hotel 1"),
                        makeItem(image:"assets/images/d.jpg",title:"Hotel 1"),
                        makeItem(image:"assets/images/f.jpg",title:"Hotel 1"),
                        makeItem(image:"assets/images/g.jpg",title:"Hotel 1"),

                      ],
                    ),
                  ),

                ],
              ),
            ),


            //tana qisam

          ],
        ),
      ),

    );
  }
  Widget makeItem({image,title}){
    return AspectRatio(
      aspectRatio: 1/1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          ),

        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),

              ]
            ),
          ),
          child:Align(
            alignment: Alignment.bottomRight,
            child: Row(
              children: [
                Text(title,style: TextStyle(color: Colors.white,fontSize: 19),),
                SizedBox(width: 50,),
               // IconButton(icon: Icon(Icons.add_shopping_cart_outlined,color: Colors.white,), onPressed: (){Navigator.pushNamed(context, MainPage.id);}),
                Icon(Icons.favorite,color: Colors.red,)

              ],
            ),
          )
        ),
      ),



    );
  }
}
