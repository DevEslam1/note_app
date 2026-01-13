import 'package:flutter/material.dart';
import 'package:note_app/views/note_view.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotesView(),
      theme: ThemeData.from(useMaterial3: true, colorScheme: ColorScheme.dark())
          .copyWith(
            scaffoldBackgroundColor: const Color.fromARGB(255, 68, 56, 54),
          ),
    );
  }
}
