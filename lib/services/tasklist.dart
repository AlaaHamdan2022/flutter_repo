import 'package:provide/services/taskdata.dart';
import 'package:flutter/material.dart';
class TaskList with ChangeNotifier {
  List<TaskData> tasklist = [];
  AddTask(TaskData task){
    tasklist.add(task);
    notifyListeners();
  }

  removeTask(TaskData task){
    tasklist.remove(task);
    notifyListeners();
  }

}