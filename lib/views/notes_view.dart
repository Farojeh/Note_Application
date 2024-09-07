import 'package:flutter/material.dart';
import 'package:notes/constans.dart';
import 'package:notes/views/widget/add_note.dart';
import 'package:notes/views/widget/leading_appbar.dart';
import 'package:notes/views/widget/notes_list_view.dart';
import 'package:notes/views/widget/trailing_appbar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Notes Application" , style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontFamily: Constans.font,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.7
        ),),
        leading:const LeadingAppbar(),
        actions:const [TrailingAppbar()],
        backgroundColor: Constans.basiccolor
      ),
      body: const NotesListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context,
          isScrollControlled: true,
           shape:const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30)
            )
           ),
           builder: (context)=>const AddNote()); 
        },
        backgroundColor: Constans.basiccolor,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25)
        ),
        child:const Icon(Icons.post_add , size: 25, color: Colors.white,),
        ) ,
    );
  }
}