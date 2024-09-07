import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:notes/constans.dart';
import 'package:notes/controller/read_notes_controller.dart';
import 'package:notes/models/note_model.dart';

class SearchhController extends GetxController {

  final controller = Get.put(ReadNotesController());
  List <NoteModel>searchnote = [];

  void search(String value){
    var notebox = Hive.box<NoteModel>(Constans.generalbox);
    searchnote = notebox.values.where((note) => note.title.contains(value)).toList();
    update();
  }
}