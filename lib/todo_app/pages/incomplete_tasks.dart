import 'package:flutter/material.dart';
import 'package:ismail/todo_app/data/tasks_data.dart';



import '../widgets/task_widget.dart';

class InCompleteTasksScreen extends StatefulWidget {
  Function fun;
  InCompleteTasksScreen(this.fun);

  @override
  State<InCompleteTasksScreen> createState() => _InCompleteTasksScreenState();
}

class _InCompleteTasksScreenState extends State<InCompleteTasksScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.where((element) => !element.isCompleted).length,
        itemBuilder: (context, index) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: TaskWidget(
                      tasksList
                          .where((element) => !element.isCompleted)
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
