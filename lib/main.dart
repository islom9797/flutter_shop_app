import 'package:flutter/material.dart';
import 'package:flutter_shop_app/pages/hotel_page.dart';
import 'package:flutter_shop_app/pages/intro_page.dart';
import 'package:flutter_shop_app/pages/main_page.dart';

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
      home: HotelPage(),
      routes: {
        MainPage.id:(context)=>MainPage(),
        IntroPage.id:(context)=>IntroPage(),
        HotelPage.id:(context)=>HotelPage(),

      },
    );
  }
}
