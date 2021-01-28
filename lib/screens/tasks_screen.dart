import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_provider_todo/main.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Wrap(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
              ),
            ),
            padding: EdgeInsets.only(left: 20, top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Icon(FontAwesome5Solid.stream),
                SizedBox(
                  height: 10,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60,bottom: 30),
                  child: Text(
                    'Tasks',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        child: Icon(Icons.add,color: Colors.black,),
      ),
    );
  }
}
