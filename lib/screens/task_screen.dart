import 'package:flutter/material.dart';
import 'package:provide/services/tasklist.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Column(
        children: [
          Container(
            color: Colors.lightBlue,
            width: double.infinity,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    child: Icon(Icons.list),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Todoey",
                    style: TextStyle(fontSize: 20, color: Colors.white70),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100)),
                    color: Colors.white70),
            child: ListView.builder(
                itemCount: Provider.of<TaskList>(context).tasklist.length,
                itemBuilder: (context, i) {
                  return ListTile(
                    onLongPress: () {
                      Provider.of<TaskList>(context, listen: false).removeTask(
                          Provider.of<TaskList>(context, listen: false)
                              .tasklist[i]);
                    },
                    title:
                        Text(Provider.of<TaskList>(context).tasklist[i].data),
                    subtitle: Text("Task num $i"),
                    trailing: Checkbox(
                      value: Provider.of<TaskList>(context).tasklist[i].isDone,
                      onChanged: (bool? value) {
                        print(1);
                        Provider.of<TaskList>(context, listen: false)
                                .tasklist[i]
                                .isDone =
                            !Provider.of<TaskList>(context, listen: false)
                                .tasklist[i]
                                .isDone;
                      },
                    ),
                  );
                }),
          )
          )  ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('AddTask');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
