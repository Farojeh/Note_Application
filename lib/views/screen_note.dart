import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/constans.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/widget/botton.dart';
import 'package:notes/views/widget/custom_view_note.dart';
import 'package:notes/views/widget/edit_note.dart';
import 'package:notes/views/widget/text_item.dart';

class ScreenNote extends StatelessWidget {
  final NoteModel note ;
  const ScreenNote({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Container(
        height: 420,
        padding:const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           TextItem(title:note.title , size: 38, color: Colors.black, fontfamily: Constans.font, top: 10, bottom: 0, left: 9, right: 9),
           CustomViewNote(content: note.content,),
           Padding(
             padding:const EdgeInsets.only(top: 20 , left: 170),
             child: Botton(color: Constans.basiccolor,
             onPressed: (){
              Get.back();
              showDialog(context: context,
               builder: (context)=> EditNote(note: note,));
             },
              height: 25, width: 60, title: "Edit Note",
               style:const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: Constans.font,
                fontWeight: FontWeight.bold
               ),
               red: 10),
           )
          ],
        ),
      )
    );
  }

}