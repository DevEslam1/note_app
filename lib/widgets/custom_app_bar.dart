import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool _showAppBar = true;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollUpdateNotification>(
      onNotification: (ScrollUpdateNotification notification) {
        if (notification.scrollDelta! > 0) {
          if (_showAppBar) {
            setState(() {
              _showAppBar = false;
            });
          }
        } else if (notification.scrollDelta! < 0) {
          if (!_showAppBar) {
            setState(() {
              _showAppBar = true;
            });
          }
        }
        return true;
      },
      child: _buildAppBar(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Text(widget.title),
      backgroundColor: Colors.transparent,
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

AppBar customAppBar(String title) {
  return AppBar(
    title: Text(title),
    backgroundColor: Colors.transparent,
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
