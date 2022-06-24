import 'package:provide/services/taskdata.dart';
import 'package:provide/services/tasklist.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
class AddTask extends StatelessWidget {
 // AddTask({Key? key}) : super(key: key);
  TextEditingController formkey = new TextEditingController();
   late String data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Column(children: [SizedBox(height: 25,),Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("Add",style:TextStyle(fontSize:20,fontWeight:FontWeight.bold ),),
    ),TextFormField(controller:formkey,onChanged:(value){data=value;}, ),
      ElevatedButton(onPressed: (){Provider.of<TaskList>(context,listen: false).AddTask( TaskData(data:formkey.text, isDone:false)); Navigator.pop(context);
      }, child:Text("Add Task"))],));
  }
}
