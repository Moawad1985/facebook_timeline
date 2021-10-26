import 'package:facebook_timeline/model/post_model.dart';
import 'package:facebook_timeline/widgets/facebook_post.dart';
import 'package:flutter/material.dart';
//l 73 ///// 5:00
void main() {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<PostModel> listOfModel = [
    PostModel(
      useName: 'Moawad Soliman',
      image: 'images/prof.jpg',
      postImage: 'images/safari.jpg',
      text: ' It is Good day to see wild life here in Kenya',
      totalLikes: '450 views',
      date: '20 October at 13:00pm ',
      totalComments: '',
      totalShares: '',
    ),
    PostModel(
      useName: 'Mohamed Ali',
      image: 'images/prof.jpg',
      postImage: 'images/post2.jpg',
      text: ' It is time to dine',
      totalLikes: '50 views',
      date: '20 December at 13:00pm ',
      totalComments: '',
      totalShares: '',
    ),
    PostModel(
      useName: 'Ahmed Mohamed',
      image: 'images/prof.jpg',
      postImage: 'images/post3.jpg',
      text: 'hey try to do it',
      totalLikes: '50 views',
      date: '20 December at 13:00pm ',
      totalComments: '',
      totalShares: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FaceBook',
      home: Scaffold(
        body: ListView.builder(
          itemCount: listOfModel.length,
          itemBuilder: (context, index) {
            return FaceBookPost(
              postModel: listOfModel[index],
            );
          },
        ),
      ),
    );
  }
}

/*
 ListView.builder(
             itemCount: 3,
             itemBuilder: (context,index)=>FacebookPost()),
 */
