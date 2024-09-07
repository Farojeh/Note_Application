import 'package:flutter/material.dart';
import 'package:notes/views/widget/note_search_listview.dart';
import 'package:notes/views/widget/search_part.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
           SizedBox(height: 50,),
           SearchPart(),
           Expanded(child:NoteSearchListview(),
           )
          ],
        ),
      ),
    );
  }
}
