import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:what_todo/Model/Tasks_Data.dart';
import 'package:what_todo/Widgets/add_Task_Screen.dart';
import 'package:what_todo/Widgets/task_List.dart';

class TaskScreen extends StatelessWidget {
//   @override
//   _TaskScreenState createState() => _TaskScreenState();
// }
//
// class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 100.0, left: 40, right: 30, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.list,
                      size: 30,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('What To Do',
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                  Text(
                    '${Provider.of<tasksData>(context).taskcount} items to do',
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
                child: TasksList(),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => addTaskScreen(),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
