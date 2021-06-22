import 'package:flutter/material.dart';
import 'package:todoey/models/taskdata.dart';
import 'package:todoey/models/tasks.dart';
import 'package:todoey/screens/task_screen.dart';
import 'package:provider/provider.dart';

import 'package:todoey/models/taskdata.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>TaskData(),
          child: MaterialApp(initialRoute: TaskScreen.id, routes: {
        TaskScreen.id: (context) => TaskScreen(),
      }),
    );
  }
}
