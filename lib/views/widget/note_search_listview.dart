import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/constans.dart';
import 'package:notes/controller/search_controller.dart';
import 'package:notes/views/widget/notes_item.dart';

class NoteSearchListview extends StatelessWidget {
  const NoteSearchListview({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchhController>(
      init: SearchhController(),
      builder: (controller)=>controller.searchnote.isNotEmpty? ListView.builder(
        itemCount: controller.searchnote.length ,
        itemBuilder: (context , index)=>NotesItem(
          note: controller.searchnote[index],
          color:getcolor(index) ,)):Container(
            height: 50,
            width: 250,
            alignment: Alignment.center,
            child: Image.asset("assets/images/searchnote.png" ,fit: BoxFit.contain,),
          //  color: Colors.amber,
          ));
  }

Color getcolor(int index){
  if(index%4==0){
    return Constans.yellow ;
  }else if(index %4 == 1){
    return Constans.blue ;
  }else if(index %4 == 2){
    return Constans.green ;
  }else{
    return Constans.pink ;
  }
}
}