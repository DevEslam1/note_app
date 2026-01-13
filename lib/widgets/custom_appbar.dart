import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Color.fromARGB(255, 68, 56, 54),
      title: Text('My Notes', style: Theme.of(context).textTheme.headlineLarge),
      floating: true,
      snap: true,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [BoxShadow(color: Colors.white12)],
            ),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ),
        ),
      ],
    );
  }
}
