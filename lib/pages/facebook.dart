import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Facebook extends StatefulWidget {
  static final String id="facebook";
  @override
  _FacebookState createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text("facebook",style: TextStyle(color: Colors.blueAccent,fontSize: 30,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(icon: Icon(Icons.search_rounded,color: Colors.grey[500],), onPressed: null),
          IconButton(icon: Icon(Icons.camera_alt,color: Colors.grey[500],), onPressed: null),
        ],

      ),
     body: ListView(

       children: [
         //makestory
         Container(
           height: 120,
           color: Colors.black,
           padding: EdgeInsets.only(top: 10,left: 10,right: 10),
           child: Column(
           children: [
             Expanded(
                 child: Row(
                   children: [
                     //image container
                     Container(
                       width: 45,
                       height: 45,
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         image: DecorationImage(
                           image: AssetImage("assets/images/9.png"),
                           fit: BoxFit.cover
                         )
                       ),
                     ),
                    // SizedBox(width: 20,),
                     Expanded(
                       child: Container(
                         margin: EdgeInsets.only(left: 15),
                         padding: EdgeInsets.only(right: 15,left: 15),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(30),
                             border: Border.all(
                                 width: 1,
                                 color: Colors.grey[500]
                             ),


                         ),
                         child: TextField(
                           decoration: InputDecoration(
                             hintText: "What's on your mind",
                             border: InputBorder.none,
                             hintStyle: TextStyle(color: Colors.grey[500],)
                           ),

                         ),

                     ),
                     ),

                   ],

             ),
             ),
             Expanded(
               child: Row(
                 children: [
                   Expanded(child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Icon(Icons.video_call,color: Colors.red,),
                     SizedBox(width: 5,),
                     Text("Live",style: TextStyle(color: Colors.grey[500],),),
                   ],
                   ),
                   ),
                   Container(
                     width: 1,
                     color: Colors.grey[300],
                     margin: EdgeInsets.only(bottom: 15,top: 15),
                   ),
                   Expanded(child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(Icons.photo,color: Colors.green,),
                       SizedBox(width: 5,),
                       Text("Photo",style: TextStyle(color: Colors.grey[500],),),
                     ],
                   ),
                   ),
                   Container(
                     width: 1,
                     color: Colors.grey[300],
                     margin: EdgeInsets.only(bottom: 15,top: 15),
                   ),
                   Expanded(child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(Icons.location_on_rounded,color: Colors.red,),
                       SizedBox(width: 5,),
                       Text("Check in",style: TextStyle(color: Colors.grey[500],),),
                     ],
                   ),
                   ),

                 ],

               ),
             )
           ],
           ),
         ),
         //story
         Container(
           margin: EdgeInsets.only(top: 10),
           padding: EdgeInsets.only(top: 10,bottom: 10),
           height: 200,
           color: Colors.black,
           child: ListView(
             scrollDirection: Axis.horizontal,
             children: [
               makeStory(
                 storyImage:"assets/images/1.jpg",
                 userImage:"assets/images/1.jpg",
                 username:"user Five",
               ),
               makeStory(
                 storyImage:"assets/images/2.jpg",
                 userImage:"assets/images/a.jpg",
                 username:"user Five",
               ),
               makeStory(
                 storyImage:"assets/images/3.jpg",
                 userImage:"assets/images/d.jpg",
                 username:"user Five",
               ),
               makeStory(
                 storyImage:"assets/images/4.jpg",
                 userImage:"assets/images/f.jpg",
                 username:"user Five",
               ),
               makeStory(
                 storyImage:"assets/images/5.jpg",
                 userImage:"assets/images/1.jpg",
                 username:"user Five",
               ),
             ],
           ),
         ),
         makeFeed(
             userName: 'User Two',
             userImage: 'assets/images/1.jpg',
             feedTime: '1 hr ago',
             feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
             feedImage: 'assets/images/w.png'
         ),
         makeFeed(
             userName: 'User Three',
             userImage: 'assets/images/2.jpg',
             feedTime: '1 hr ago',
             feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
             feedImage: 'assets/images/q.png'
         ),
         //postfeed
         makeFeed(
             userName: 'User Three',
             userImage: 'assets/images/3.jpg',
             feedTime: '1 hr ago',
             feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
             feedImage: 'assets/images/e.png'
         ),
         makeFeed(
             userName: 'User Three',
             userImage: 'assets/images/4.jpg',
             feedTime: '1 hr ago',
             feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
             feedImage: 'assets/images/im_party.jpeg'
         ),
       ],
     ),
     // drawer: Drawer(),
    );
  }
  //storywidget
  Widget makeStory({storyImage,userImage,username}){
    return AspectRatio(
      aspectRatio: 1.3/2,
      child: Container(

        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ]
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //dumaloqdi rasm kickina
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue,width: 2),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Text(username,style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}){
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.black,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //part1
          Container(
            padding:EdgeInsets.only(left: 10,right: 10),
            child: Column(

              children: [
              SizedBox(height: 10,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Row(
                   children: [
                     Container(
                       width: 50,
                       height: 50,
                       decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           image: DecorationImage(
                               image: AssetImage(userImage),
                               fit: BoxFit.cover
                           )
                       ),

                     ),
                     SizedBox(width: 10,),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(userName,style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.bold,fontSize: 18),),
                         SizedBox(height: 5,),
                         Text(feedTime,style: TextStyle(color: Colors.grey[700],fontSize: 15),),
                       ],
                     ),

                   ],
                 ),
                 IconButton(icon: Icon(Icons.more_horiz,color: Colors.grey[600],size: 30,), onPressed: (){})
               ],
             ),
                SizedBox(height: 10,),
             Text(feedText,style: TextStyle(fontSize: 15,color: Colors.grey[700],height: 1.5,letterSpacing:.7             ),),

              ],
            ),
          ),
          //image
          Container(
            height: 240,
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage(feedImage),
               fit: BoxFit.cover
             )
           ),

          ),
          //likes
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Row(
                 children: [
                   makeLike(),
                   Transform.translate(
                     offset: Offset(-5,0),
                     child: makeLove(),
                   ),
                   SizedBox(width: 5,),
                   Text("2.5K",style: TextStyle(color: Colors.grey[800],fontSize: 15,),),
                 ],
               ),
                Text("4000 Comment",style: TextStyle(fontSize: 13,color: Colors.grey[400]),)


              ],
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(isActive:true),
              makecommentButton(),
              makeShareButton()
            ],
          ),
          SizedBox(height: 10,),

        ],
      ),

    );

}
Widget makeLike(){
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),

      ),
      child: Center(
        child: Icon(Icons.thumb_up,color: Colors.white,size: 12,),
      ),



    );
}
Widget makeLove(){
  return Container(
    height: 25,
    width: 25,
    decoration: BoxDecoration(
      color: Colors.red,
      shape: BoxShape.circle,
      border: Border.all(color: Colors.white),

    ),
    child: Center(
      child: Icon(Icons.favorite,color: Colors.white,size: 12,),
    ),



  );
}
Widget makeLikeButton({isActive}){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.thumb_up,color: Colors.blue,size: 18,),
            SizedBox(width: 5,),
            Text("Like",style: TextStyle(color:isActive?Colors.blue:Colors.grey,))
          ],
        ),
      ),
    );
}
  Widget makecommentButton(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.chat,color: Colors.grey[400],size: 18,),
            SizedBox(width: 5,),
            Text("Comment",style: TextStyle(color:Colors.grey,))
          ],
        ),
      ),
    );
  }
  Widget makeShareButton(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.share,color: Colors.grey[400],size: 18,),
            SizedBox(width: 5,),
            Text("Share",style: TextStyle(color:Colors.grey,))
          ],
        ),
      ),
    );
  }
}
