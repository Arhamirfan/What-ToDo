import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:what_todo/Model/Task.dart';
import 'package:what_todo/Model/Tasks_Data.dart';
import 'package:what_todo/Widgets/Task_tile.dart';

class TasksList extends StatelessWidget {
//   @override
//   _TasksListState createState() => _TasksListState();
// }
//
// class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<tasksData>(
      builder: (context, tasksData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            Task tasks = tasksData.tasks[index];
            return TaskTile(
              isChecked: tasks.isDone,
              taskTitle: tasks.name,
              checkboxCallBack: (bool? checkboxState) {
                tasksData.updatetask(tasks);
              },
              onlongpressCallBack: () {
                tasksData.deleteTask(tasks);
              },
            );
          },
          itemCount: tasksData.taskcount,
        );
      },
    );
  }
}
