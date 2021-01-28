import 'package:flutter/material.dart';
class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Container(
        padding: EdgeInsets.only(left: 20, top: 20),
        child: Column(
          children: [
            Icon(Icons.view_stream_outlined)
          ],
        ),
      ),
    );
  }
}
