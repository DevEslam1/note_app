import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
            textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme)
                .copyWith(
                  headlineLarge: const TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  headlineSmall: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                  bodyLarge: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                  bodyMedium: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
          ),
    );
  }
}
