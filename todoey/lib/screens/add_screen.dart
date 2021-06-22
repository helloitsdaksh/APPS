import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/taskdata.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color.fromARGB(255, 117, 117, 117),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Add Task",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextField(
                textAlign: TextAlign.center,
                cursorColor: Colors.blueGrey,
                autofocus: true,
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: FlatButton(
                  color: Colors.lightBlueAccent,
                  hoverColor: Colors.blueAccent,
                  child: Text(
                    "Add",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Provider.of<TaskData>(context,listen: false).updateTask(newTaskTitle);
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
