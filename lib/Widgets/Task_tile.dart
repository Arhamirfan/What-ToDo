import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallBack,
      required this.onlongpressCallBack});
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallBack;
  final Function onlongpressCallBack;
  // void checkboxCallBack(bool? checkboxState) {
  //   setState(() {
  //     isChecked = checkboxState ?? true;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onlongpressCallBack as void Function()?,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (value) {
          // USE : onChanged : checkboxCallBack as void Function(bool?)?
          //not preferable because redundent and not have a return value.. for return value use this
          //lifting state up:
          checkboxCallBack(value);
        },
      ),
    );
  }
}
