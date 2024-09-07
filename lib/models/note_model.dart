import 'package:hive/hive.dart';
part 'note_model.g.dart' ;

//الكلاس يلي عم انشألو موديلات عم انشأ قدامو فايل بيخزن الداتا لوكال 
//عن طريق تعليمة part  مع اسم الفايل تبع الموديل 
// وبعدا هي التعليمة بالتيرمينال 
//flutter packages pub run build_runner build

@HiveType(typeId: 0)
class NoteModel extends HiveObject{
  @HiveField(0)
   String title ;
  @HiveField(1)
   String content ;
  @HiveField(2)
  final String date ;

  NoteModel({required this.title, required this.content, required this.date});
  
}