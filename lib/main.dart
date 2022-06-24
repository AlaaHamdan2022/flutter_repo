import 'package:flutter/material.dart';
import 'package:provide/screens/addtask_screen.dart';
import 'package:provide/screens/task_screen.dart';
import 'package:provide/services/tasklist.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(
      ChangeNotifierProvider(
      create: (_) =>TaskList(),child: MyApp(),
   ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskScreen(),
        routes:{'AddTask':(context)=>AddTask() },
    );
  }
}

