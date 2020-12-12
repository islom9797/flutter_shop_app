import 'package:flutter/material.dart';
import 'package:flutter_shop_app/pages/AmazonUi.dart';
import 'package:flutter_shop_app/pages/hotel_page.dart';
import 'package:flutter_shop_app/pages/intro_page.dart';
import 'package:flutter_shop_app/pages/main_page.dart';
import 'package:flutter_shop_app/pages/partyUi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AmazonUi(),
      routes: {
        MainPage.id:(context)=>MainPage(),
        IntroPage.id:(context)=>IntroPage(),
        HomePage.id:(context)=>HomePage(),
        HotelPage.id:(context)=>HotelPage(),
        AmazonUi.id:(context)=>AmazonUi(),



      },
    );
  }
}
