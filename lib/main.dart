import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:what_todo/Model/Tasks_Data.dart';
import 'package:what_todo/Screens/TaskScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => tasksData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
