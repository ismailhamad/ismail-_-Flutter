import 'package:flutter/material.dart';
import 'package:ismail/todo_app/widgets/task_widget.dart';

import '../data/tasks_data.dart';

class CompleteTasksScreen extends StatefulWidget {
  Function fun;
  CompleteTasksScreen(this.fun);

  @override
  State<CompleteTasksScreen> createState() => _CompleteTasksScreenState();
}

class _CompleteTasksScreenState extends State<CompleteTasksScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return ListView.builder(
        itemCount: tasksList.where((element) => element.isCompleted).length,
        itemBuilder: (context, index) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: TaskWidget(
                      tasksList
                          .where((element) => element.isCompleted)
                          .toList()[index],
                      widget.fun)),
              IconButton(
                  onPressed: () {
                    setState(() {
                      tasksList.removeWhere(
                          (e) => e.title == tasksList[index].title);
                    });
                  },
                  icon: Icon(Icons.delete_sharp))
            ],
          );
        });
  }
}
