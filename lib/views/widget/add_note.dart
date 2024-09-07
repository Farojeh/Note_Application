import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes/views/widget/add_note_form.dart';


class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).viewInsets.bottom==0? 430:650,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(left: 16 , right: 16, bottom: MediaQuery.of(context).viewInsets.bottom),
        child:const Addnoteform()
      ),
    );
  }
}
