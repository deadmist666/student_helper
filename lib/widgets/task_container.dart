import 'package:flutter/material.dart';

class TaskContainer extends StatelessWidget {
  final String? discipline;
  final String? educator;
  final String? taskName;
  final String? deadline;
  final String? mark;

  const TaskContainer(
      {Key? key,
      this.discipline,
      this.educator,
      this.taskName,
      this.deadline,
      this.mark})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        shadowColor: Color(0xFF2D9CDB).withOpacity(0.1),
        color: Color(0xFF2D9CDB).withOpacity(0.1),
        child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  discipline!,
                  style: Theme.of(context).textTheme.headline2,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  taskName!,
                  style: Theme.of(context).textTheme.headline3,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  deadline!,
                  style: Theme.of(context).textTheme.headline2,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            )),
      ),
    );
  }
}
