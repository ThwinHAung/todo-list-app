import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String? taskTitle;
  final Function(bool?)? checkBoxCallback;
  final Function()? longPressCallback;
  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.checkBoxCallback,
      this.longPressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPressCallback,
        title: Text(
          taskTitle!,
          style: TextStyle(
              decoration: isChecked! ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkBoxCallback!,
          // onChanged: toggleCheckboxState);
        ));
  }
}

// class TaskCheckbox extends StatelessWidgett
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: isChecked,
//       onChanged: (newValue) {

//       },
//     );

// TaskCheckBox(
// checkboxState: isChecked,
// toggleCheckboxState:
// ),
