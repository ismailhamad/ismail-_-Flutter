import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ismail/todo_app/widgets/task_widget.dart';

import '../data/tasks_data.dart';


class AllTasksScreen extends StatefulWidget {
  Function fun;
  AllTasksScreen(this.fun);

  @override
  State<AllTasksScreen> createState() => _AllTasksScreenState();
}

class _AllTasksScreenState extends State<AllTasksScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

   
      setState(() {});
   
    return ListView.builder(
        itemCount: tasksList.length,
        itemBuilder: (context, index) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(child: TaskWidget(tasksList[index], widget.fun)),
              IconButton(
              onPressed: () {
                setState(() {
                  tasksList.removeWhere((e) => e.title == tasksList[index].title);
                });
              },
              icon: Icon(Icons.delete_sharp))
            ],
          );
        });
  }
}
