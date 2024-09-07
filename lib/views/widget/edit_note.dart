
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/constans.dart';
import 'package:notes/controller/read_notes_controller.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/widget/botton.dart';
import 'package:notes/views/widget/custom_text_field.dart';

class EditNote extends StatefulWidget {
  final NoteModel note ;
  const EditNote({
    super.key, required this.note,
  });

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  String? title , content ;
  final controller = Get.put(ReadNotesController());
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 440,
        padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
        child: ListView(
          children: [
            CustomTextField(
              hint: "Title of your note",
              onChanged: (value){
                title = value ;
              },
            ),
           const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: "Content of your note",
              maxline: 6,
              onChanged: (value){
                content = value ;
              },
            ),
            Container(
              margin:const EdgeInsets.only(top: 40),
              alignment: Alignment.centerRight,
              width: double.infinity,
              child: Botton(
                onPressed: (){
                    widget.note.title = title ?? widget.note.title ;
                    widget.note.content = content ?? widget.note.content ;
                    controller.fetchallnotes();
                    Get.back();
                },
                red: 20,
                color: Constans.basiccolor,
                height: 60,
                width: 120,
                title: "Edit Note",
                style:const TextStyle(
                    fontFamily: Constans.font,
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
