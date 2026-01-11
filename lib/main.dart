import 'package:flutter/material.dart';
import 'package:note_app/widgets/notes_view_body.dart';

void main() {
  runApp(const note_app());
}

class note_app extends StatelessWidget {
  const note_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: NotesViewBody());
  }
}
