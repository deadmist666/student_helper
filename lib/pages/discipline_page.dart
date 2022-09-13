import 'package:flutter/material.dart';
import 'package:figma_design/models/task_list.dart';
import 'package:figma_design/widgets/task_container.dart';

class DisciplinePage extends StatelessWidget {
  const DisciplinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(children: [
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: taskList.length,
                itemBuilder: (context, index) {
                  return TaskContainer(
                    discipline: taskList[index].discipline,
                    taskName: taskList[index].taskName,
                    deadline: taskList[index].deadline,
                  );
                }),
          )
        ]),
      );
  }
}
