import 'package:flutter/material.dart';
import 'package:notes/constans.dart';

class CustomViewNote extends StatelessWidget {
  final String content ;
  const CustomViewNote({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:270,
      child: Scrollbar(
          thickness: 6.0, 
          radius: const Radius.circular(10),
        child: SingleChildScrollView(
          child: Padding(
                    padding: const EdgeInsets.only(left: 20 , right:  30 , top: 10),
                    child: Text(content,
                    style:const TextStyle(
                    fontSize: 19,
                    color:  Color.fromARGB(255, 34, 33, 33), 
                    fontWeight: FontWeight.w300 ,
                    fontFamily: Constans.font,
                    ),),
                    ),
        ),
      ),
    );
  }
}