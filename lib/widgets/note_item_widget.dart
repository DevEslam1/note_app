import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 12, left: 12, top: 34, bottom: 34),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.yellow.withOpacity(0.7),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),

      child: Column(
        crossAxisAlignment: .end,
        mainAxisAlignment: .center,
        children: [
          ListTile(
            title: Text(
              'Sample Note',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Text(
                'This is a sample note item.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            trailing: IconButton(
              icon: Icon(Icons.delete, color: Colors.black, size: 35),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Text(
              'Date 12/12/2012',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
