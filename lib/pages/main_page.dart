import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MainPage extends StatefulWidget {
  static final String id="main_page";
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
       // leading: Text("Cars",style: TextStyle(color: Colors.redAccent,fontSize: 18,),),
        title: Text("Cars",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),),
        brightness: Brightness.light,//tepadagi soatlani korsatadi
        actions: [
          IconButton(icon: Icon(Icons.notifications,color: Colors.red,), onPressed: null),
          IconButton(icon: Icon(Icons.shopping_cart,color: Colors.red,), onPressed: null),

        ],
              ),
      body:SingleChildScrollView(
        child:  Container(

          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 35,
                child: ListView(
                  scrollDirection: Axis.horizontal,//scroll qilish turini beramiz tepadan passga yoki ondan chapga
                  children: [
                    singleTab(true,"All"),
                    singleTab(false,"Red"),
                    singleTab(false,"Blue"),
                    singleTab(false,"Green "),
                    singleTab(false,"Yellow"),

                  ],
                ),
              ),
              SizedBox(height: 20,),
              makeItem("assets/images/6.jpg"),
              makeItem("assets/images/7.jpg"),
              makeItem("assets/images/8.jpg"),
              makeItem("assets/images/9.png"),
              makeItem("assets/images/10.jpg"),

            ],
          ),
        ),
      ),
    );
  }
  Widget singleTab(bool type ,String text){
    return AspectRatio(
        aspectRatio: 2.2/1,//bu aspect video class asosan elementni proporsiya asosida razmerini hisoblaydi maslan 1/2 prosporsiyada boyini 1 bersez eni avtomat ikki boaldi
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: type?Colors.red[400]:Colors.white,
          borderRadius: BorderRadius.circular(20),

        ),
        child: Center(
          child: Text(text,style: TextStyle(fontSize: type?20:17),),
        ),

      ),

    );
  }
  Widget makeItem(String image){
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400],
            blurRadius: 10,
            offset: Offset(0,10),

          ),
        ]

      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),

            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("PPD Cars",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(width: 20,),
                Text("Electric",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
            Text("100\$",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.right,),
            Expanded(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(

                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: Center(

                      child: Icon(Icons.favorite_border,color: Colors.white,),
                    ),
                  )
                ],
            ),
            ),


          ],
        ),
      ),
    );
  }

}
