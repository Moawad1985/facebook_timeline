import 'package:facebook_timeline/model/post_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class FaceBookPost extends StatelessWidget {
  PostModel? postModel;
   FaceBookPost({Key? key, this.postModel}) : super(key: key);

  String useName='Moawad Soliman';
  String image='images/prof.jpg';
  String postImage ='images/safari.jpg';
  String text =' It is Good day to see wild life here in Kenya';
  String totalLikes ='450 views';
  String? totalShares;
  String? totalComments;
  String? totalViews ;
  String date='20 October at 13:00pm ';
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(postModel!.image!),
            ),
            title: Text( postModel!.useName!,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Row(
              children: [
                Text(postModel!.date!),
                Icon(
                  FontAwesomeIcons.globeAmericas,
                  size: 19,
                )
              ],
            ),
            trailing: Icon(Icons.keyboard_arrow_down),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(postModel!.text!,style: TextStyle(fontSize: 18),),
          ),
          SizedBox(height: 5,),
          Image.asset(postModel!.postImage!),
          SizedBox(height: 5,),
          Text(totalLikes),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(onPressed: (){}, icon:Icon (Icons.thumb_up), label: Text('like'),),

                TextButton.icon(onPressed: (){}, icon: Icon(Icons.comment), label: Text('comment'),),

                TextButton.icon(onPressed: (){}, icon: Icon(Icons.share), label: Text('share'),),
              ],),
          ),

        ],
      ),
    );
  }
}

