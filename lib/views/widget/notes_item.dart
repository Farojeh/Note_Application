import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/constans.dart';
import 'package:notes/controller/read_notes_controller.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/screen_note.dart';
import 'package:notes/views/widget/error.dart';
import 'package:notes/views/widget/text_item.dart';

class NotesItem extends StatelessWidget {
  final Color color ;
  final NoteModel note ;
  const NotesItem({super.key, required this.color, required this.note});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          overlayColor: WidgetStatePropertyAll(Colors.white.withOpacity(0)),
          onTap: (){
            showDialog(context: context, builder: (context)=> ScreenNote(
              note: note,
            ));
          },
          child: Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            margin:const EdgeInsets.symmetric(horizontal: 10 , vertical: 9),
            decoration: BoxDecoration(
              color:color,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextItem(title: note.date,
                 size: 10,
                 color: Colors.black54,
                 fontfamily: null ,
                 top: 8,bottom: 0, left: 10,right: 0,
                 ),
                 TextItem(title: note.title,
                 size: 18,
                 color: Colors.black,
                 fontfamily: null ,
                 top: 3,bottom: 0, left: 10,right: 0,
                 ),
                 TextItem(title:note.content,
                 size: 16,
                 color: Colors.black,
                 fontfamily: Constans.font ,
                 top: 6,bottom: 0, left: 10,right: 5,
                 ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 15,
          right: 17,
          child: TextButton(onPressed: (){
           try{
            final controller = Get.put(ReadNotesController());
            note.delete();
            controller.fetchallnotes();
           }catch(error){
            // ignore: use_build_context_synchronously
                 showDialog(context: context, builder:(ctx)=> ErrorDialog(error: error.toString(),));
           }
          }, child:const Icon(Icons.delete , size: 27, color: Colors.redAccent,)) )
      ],
    );
  }
}