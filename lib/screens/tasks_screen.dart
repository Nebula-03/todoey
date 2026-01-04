import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks_list.dart';
import 'package:todoey/screens/add_task_screen.dart';

class TasksScreens extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      floatingActionButton: FloatingActionButton(
        elevation: 15,
        backgroundColor: Colors.cyan,
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context) => AddTaskScreen());
        },
        shape: CircleBorder(),
        child: Icon(Icons.add, color: Colors.white,),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list, color: Colors.cyan,size: 40,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(height: 10,),
                Text('Todoey', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 40)),
                Text(
                  '12 Tasks', style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w400),
                ),

              ],
            ),
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(45), topRight: Radius.circular(45),
                ),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}


