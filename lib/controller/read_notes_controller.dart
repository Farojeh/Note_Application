import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:notes/constans.dart';
import 'package:notes/models/note_model.dart';

class ReadNotesController extends GetxController {

List<NoteModel> allnotes = [];
List<NoteModel> allnoteshelp = [];


fetchallnotes() async{
   try{
      update();   
      var notebox = Hive.box<NoteModel>(Constans.generalbox);
      allnoteshelp = notebox.values.toList() ;
      allnotes = List.from(allnoteshelp.reversed);
      update();
     }catch(error){
        throw "Somthing wrong , please try again";
     }
}


}