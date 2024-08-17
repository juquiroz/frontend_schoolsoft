import 'package:flutter/material.dart';

class ContentWidget extends StatelessWidget {
  final String content;

  ContentWidget({required this.content});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        content,
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
