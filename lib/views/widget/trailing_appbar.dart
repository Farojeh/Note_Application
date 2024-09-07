import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/views/search_screen.dart';

class TrailingAppbar extends StatelessWidget {
  const TrailingAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      alignment: Alignment.center,
      padding:const EdgeInsets.only(right: 6),
      margin:const EdgeInsets.only(right: 15 , bottom: 5),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.15),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextButton(onPressed: (){
        Get.to(const SearchScreen());
      },
     child:const Icon(Icons.search_rounded , size: 30, color: Colors.white,)),
    );
  }
}