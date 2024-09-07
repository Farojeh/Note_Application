
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/constans.dart';
import 'package:notes/controller/add_note_controller.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/widget/botton.dart';
import 'package:notes/views/widget/custom_text_field.dart';

class Addnoteform extends StatefulWidget {
  const Addnoteform({
    super.key,
  });

  @override
  State<Addnoteform> createState() => _AddnoteformState();
}

class _AddnoteformState extends State<Addnoteform> {

  final GlobalKey<FormState> formkey = GlobalKey() ;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled ;
  String? title , content ;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddNoteController>(
      init:AddNoteController() ,
      builder:(controller)=> controller.isloading==false?  Form(
      autovalidateMode: autovalidateMode,
      key: formkey,
      child: ListView(
        children: [
         const SizedBox(
            height: 30,
          ),
          CustomTextField(
            hint: "Title of your note",
            onsaved:(value) {
              title = value ;
            },
          ),
         const SizedBox(
            height: 20,
          ),
          CustomTextField(
            hint: "Content of your note",
            maxline: 6,
            onsaved: (value){
              content = value ;
            },
          ),
          Container(
            margin:const EdgeInsets.only(top: 40),
            alignment: Alignment.centerRight,
            width: double.infinity,
            child: Botton(
              onPressed: ()async{
                if(formkey.currentState!.validate()){
                 try{
                  formkey.currentState!.save();
                  NoteModel notemodel = NoteModel(title: title!, content: content!,
                   date: "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}    ${DateTime.now().hour}:${DateTime.now().minute}");
                  await controller.addNote(notemodel);
                  Get.back();
                 }catch(error){
                  print(error);
                 }
                }else{
                  autovalidateMode = AutovalidateMode.always;
                }
              },
              red: 20,
              color: Constans.basiccolor,
              height: 60,
              width: 140,
              title: "Add the Note",
              style:const TextStyle(
                  fontFamily: Constans.font,
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    ):const Center(child: CircularProgressIndicator()));
  }
}
