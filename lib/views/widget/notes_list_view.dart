import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/constans.dart';
import 'package:notes/controller/read_notes_controller.dart';
import 'package:notes/views/widget/notes_item.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({super.key});

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
 final controller = Get.put(ReadNotesController());
  @override
  void initState() {
    controller.fetchallnotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReadNotesController>(
      init: ReadNotesController(),
      builder:(controller)=> ListView.builder(
        itemCount: controller.allnotes.length ,
        itemBuilder: (context , index)=>NotesItem(
          note: controller.allnotes[index],
          color:getcolor(index) ,)),
    );
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