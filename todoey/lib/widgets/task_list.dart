import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/taskdata.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final task = Provider.of<TaskData>(context, listen: false).tasks[index];
        return TaskTile(
          text: Provider.of<TaskData>(context).tasks[index].name,
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
          checkboxCallback: (checkBoxState) {
            Provider.of<TaskData>(context, listen: false).updateCheckbox(task);
          },
          longPressCallback: () {
            Provider.of<TaskData>(context, listen: false).removeTask(task);
          },
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
