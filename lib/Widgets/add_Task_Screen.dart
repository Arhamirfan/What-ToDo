import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:what_todo/Model/Tasks_Data.dart';

class addTaskScreen extends StatelessWidget {
  late String newTasktitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newTasktitle = value;
              },
            ),
            FlatButton(
                onPressed: () {
                  Provider.of<tasksData>(context, listen: false)
                      .addtask(newTasktitle);
                  Navigator.pop(context);
                  // addTaskcallback(newTasktitle);
                },
                color: Colors.lightBlueAccent,
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
