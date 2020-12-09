import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/intilities/string.dart';
import 'package:flutter_shop_app/pages/main_page.dart';
class IntroPage extends StatefulWidget {
  static final String id="intro_page";
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  PageController _pageconteoller;
  int currentIndex;
  bool visibl=false;
  @override
  void initState() {
    _pageconteoller=PageController(
      initialPage: 0
    );
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    _pageconteoller.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Stack(
       alignment: Alignment.bottomCenter,
       children: [
         PageView(
           onPageChanged: (int page){
             setState(() {
               currentIndex=page;
             });
           },
           controller: _pageconteoller,
           children: [
             makePage(
                 image:"assets/images/q.png",
                 title:Strings.stepOneTitle,
                 content:Strings.stepOneContent
             ),
             makePage(
                 image:"assets/images/w.png",
                 title:Strings.stepTwoTitle,
                 content:Strings.stepTwoContent
             ),
             makePage(
                 image:"assets/images/e.png",
                 title:Strings.stepThreeTitle,
                 content:Strings.stepThreeContent,
             ),
           ],
         ),
         Container(
           margin: EdgeInsets.only(bottom: 60),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.end,

             children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: _buildIndicator(),
             ),
            SizedBox(width: 120,),
               Visibility(
                   visible: currentIndex==2,
                   child: GestureDetector(
                     onTap: (){

                     },
                     child: Text("Skip",style: TextStyle(color: Colors.red,fontSize: 20),),
                   )
               ),
               SizedBox(width: 20,),

           ],
           ),
         ),
       ],
     ),

    );
  }
  Widget makePage({image, title, content, reverse = false}) {
    return Container(
      padding: EdgeInsets.only(left: 50, right: 50, bottom: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 100,),
          Text(title, style: TextStyle(
              color: Colors.red,
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 30,),
          Text(content, textAlign: TextAlign.center, style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.w400
          ),),

          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(image),
              ),
              SizedBox(height: 10,),
            ],
          ),

        ],
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 30 : 6,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(5)

      ),

      

    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i<3; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }

}
