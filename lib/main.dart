import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/constans.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main () async { 
WidgetsFlutterBinding.ensureInitialized();
await Hive.initFlutter();
Hive.registerAdapter<NoteModel>(NoteModelAdapter());
await Hive.openBox<NoteModel>(Constans.generalbox);
runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const NotesApp(),
  ),
);
}
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData(
        brightness: Brightness.light,
       ),
       home: const NotesView(),
    );
  }
}