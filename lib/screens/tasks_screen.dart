import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_provider_todo/main.dart';
import 'package:circular_check_box/circular_check_box.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  bool selected = true ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Wrap(children: [
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
                    padding: const EdgeInsets.only(left: 60, bottom: 30),
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
          ]),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListView(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "Go to the gym",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        decoration:(selected) ? TextDecoration.lineThrough: null
                      ),
                    ),
                    leading: CircularCheckBox(
                      value: this.selected,
                      checkColor: Colors.black,
                      activeColor: Colors.yellow,
                      inactiveColor: Colors.grey,
                      disabledColor: Colors.yellow,
                      onChanged: (val){
                        this.setState(() {
                          this.selected= !this.selected;
                        });
                      },
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        onPressed: () {
          // Add todo list
        },
      ),
    );
  }
}
