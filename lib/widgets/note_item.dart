import 'package:flutter/material.dart';


class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.yellow.withOpacity(0.7),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),

     child: Center(child:ListTile(
      title: Text(
        'Sample Note',
      ),
      subtitle: Text(
        'This is a sample note item.',
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {},
      ),

    ))
    );
  }
}      