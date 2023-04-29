
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget myText({
  int? maxline,
  required String text,TextAlign textAlignment=TextAlign.center, double size=16, FontWeight fontweight= FontWeight.w500, Color color= Colors.black,}){
  return Text(
    maxLines: maxline,
    text,style:  TextStyle(
    color:color,
    fontSize: size,
    overflow: TextOverflow.ellipsis,
    fontWeight:fontweight,
  ),
    textAlign: textAlignment,
  );
}