import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:notes/constans.dart';
import 'package:notes/controller/read_notes_controller.dart';
import 'package:notes/models/note_model.dart';

class AddNoteController extends GetxController {
 
   bool isloading = false ;
   final controller = Get.put(ReadNotesController());
  addNote(NoteModel note) async{
     try{
      isloading = true ;   
      update();   
       var notebox = Hive.box<NoteModel>(Constans.generalbox);
       await notebox.add(note);
       isloading = false ;
       update();
       controller.fetchallnotes();
     }catch(error){
        throw "Somthing wrong , please try again";
     }
  }

}