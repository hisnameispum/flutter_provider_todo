import 'package:flutter/material.dart';
import 'package:flutter_provider_todo/widgets/task_tile.dart';


class TaskList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(),
        TaskTile(),
        TaskTile(),

      ],
    );
  }
}