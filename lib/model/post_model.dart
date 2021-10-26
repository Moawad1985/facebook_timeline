
import 'package:flutter/cupertino.dart';

class PostModel{

final String? useName;
final String? image;
final String? postImage;
final String? text;
final String? totalLikes ;
final String? totalShares;
final String? totalComments;
final String? date;

PostModel({
    @required this.useName,
    @required this.image,
    @required this.postImage,
    @required this.text,
    @required this.totalLikes,
    @required this.totalShares,
    @required this.totalComments,
    @required this.date,
  });
}