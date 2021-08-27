import 'package:flutter/material.dart';

import 'Task.dart';

class tasksData extends ChangeNotifier {
  // do tasks private because at any other side it cannot be accessed or changed or add, just add using function
  List<Task> tasks = [
    Task(name: 'Aanda laana '),
    Task(name: 'Double Rooti laani '),
    Task(name: 'Doodh malai')
  ];

  //cant touch it cant change it only for view
  //todo: look at its error and resolve it why private task is not assessible in this getter.
  // UnmodifiableListView<Task>? get tasks {
  //   return _tasks;
  // }

  int get taskcount {
    return tasks.length;
  }

  void addtask(String newdata) {
    final task = Task(name: newdata);
    tasks.add(task);
    notifyListeners();
  }

  void updatetask(Task taskdata) {
    taskdata.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task taskdata) {
    tasks.remove(taskdata);
    notifyListeners();
  }
}
